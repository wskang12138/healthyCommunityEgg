var http = require('http')
var express = require('express')
var server = http.Server(express())
var io = require('socket.io')(server, { cors: true })
var Tools = require('./tools')
var Config = require('./config')
const ChatBot = require('dingtalk-robot-sender')

const robot = new ChatBot(Config.Robot)


// 联系人列表
var concats = {
  body: [
    {
      id: 'robots',
      nickName: '沉默憨憨',
      avatar: 'robots.png',
      message: {
        content: '',
        time: Tools.dateTime()
      }
    },
    {
      id: 'group',
      nickName: '聊天室',
      avatar: 'group.png',
      message: {
        content: '',
        time: Tools.dateTime()
      }
    }

  ],
  onLine: {}
}
io.on('connection', function(socket) {
  if(socket.emit){
  // 登录
  socket.on('LOGIN', function(res) {
    let body = res.body
    let nickName = body.nickName
    let id=body.id
    if(id==''||id==undefined||id==null){
      return  socket.emit('Loss', {
        code: 2,
        body: body,
        msg: '失败！'
      })
    }
    // 修改时间
    body.message.time = Tools.dateTime()
    // 名称是否重复
    function iseixt(id){
      for (var i = 0; i < concats.body.length; i ++) {
        if (id == concats.body[i].id) {
          return false
        }
      }
      return true
    }
    /**
     * 登录成功
     */
    concats.onLine[id] = socket
    // 发送登录成功通知
    socket.emit('LOGIN_SUCCESS', {
      code: 2,
      body: body,
      msg: '登陆成功！'
    })

    socket.emit('conCats', {
      code: 2,
      body: concats.body
    })
    /**
     * 告诉客户端有人跑进来了
     */
    body.notify = nickName + '进入聊天室'
    io.emit('onLine', {
      code: 2,
      body: concats.body,
      lineCount: Tools.getLineCount(concats)
    })
   
    // 删除通知字段
    delete body.notify
    // 插入联系人列表
    if(iseixt(id)){
      body.socketId= socket.id
      concats.body.push(body)
    }
    // 沉默憨憨给进来的憨憨发消息
    setTimeout(() => {
      concats.onLine[id].emit('MESSAGE', {
        id: "robots",
        type: 'server-message',
        body: {
          type: "server",
          gotoId: "robots",
          fromId: "robots",
          avatar: concats.body[0].avatar,
          nickName: concats.body[0].nickName,
          message: {
            time: Tools.dateTime(),
            content: `您好！<br>
                 有什么问题还请联系我哦:19947926402`
          }
        }
      })
    }, 1000)
  })
  /**
   * 用户断开
   */
  socket.on('disconnect', function(res) {
    let id = socket.id
    // 删除断开用户
    concats.body.map((item, key) => {
      let name='';
      if(item.socketId== id) {
        // 删除在线人员
        name=item.nickName
        delete concats.onLine[item.id]
        concats.body.splice(key, 1)
        // 告诉客户端有人跑了
        io.emit('onLine', {
          code: 1,
          body: concats.body,
          notify:`${name}用户状态改变啦`,
          lineCount: Tools.getLineCount(concats)
        })
      }
    })
  })
  /**
   * 接收消息
   */
  socket.on('MESSAGE', function(message) {
    let type = message.type
    let body = message.body
    let gotoId = body.gotoId
    let fromId = body.fromId
    if(gotoId==''||gotoId==undefined||gotoId==null){
      return  socket.emit('Loss', {
        code: 2,
        body: body,
        msg: '失败！'
      })
    }
    if(fromId==''||fromId==undefined||fromId==null){
      return  socket.emit('Loss', {
        code: 2,
        body: body,
        msg: '失败！'
      })
    }
    message.type = 'server-message'
    message.body.type = 'server'
    if(type=='robots-message')
    {

    }
    else if (type == 'group-message'){
      const post = [
        'group-message',
        JSON.stringify(message.body),
        fromId,
        gotoId
      ]
      // 插入数据库
      Tools.database('INSERT INTO message(type,body,gotoId,fromId) VALUES(?,?,?,?)', post, result => {
        if (result) {
        }
      })
      io.emit('MESSAGE', message)
    // 一对一聊天
    } else {
      message.id = fromId
      message.body.fromId = gotoId
      message.body.gotoId = fromId
      const post = [
        'user-message',
        JSON.stringify(message.body),
        fromId,
        gotoId
      ]
      Tools.database('INSERT INTO message(type,body,gotoId,fromId) VALUES(?,?,?,?)', post, result => {
      })
      concats.onLine[gotoId].emit('MESSAGE', message)
    }
  })
  /**
   * 查看更多消息
   */
  socket.on('QUERY_PAGE', response => {
    let id = response.id
    if(id==''||id==undefined||id==null){
      return  socket.emit('Loss', {
        code: 2,
        body: body,
        msg: '失败！'
      })
    }

    let length = response.length
    // 查询数据
    if(response.type=='group-message'){
      let sql = `SELECT * FROM message where type='group-message' ORDER BY ID DESC `
      Tools.database(sql, false, result => {
        if (id) {
          if (length && result != '') result = result.slice(length)
            concats.onLine[id].emit('GROUP_MESSAGE', result)
        }
      })
    }else{
      let sql = `SELECT * FROM message where type='user-message' ORDER BY ID DESC `
      Tools.database(sql, false, result => {
        if (id) {
          if (length && result != '') result = result.slice(length)
            concats.onLine[id].emit('USER_MESSAGE', result)
        }
      })
    }
  })
  }
})
/**
 * 开启服务
 */

server.listen(4001, function() {
  console.log('goto href：', 'http://localhost:4001')
})
