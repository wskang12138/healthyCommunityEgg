## 社区健康服务管理后端

### 1.介绍


​    社区健康服务管理系统，由本人独立完成，前端采用的是Vue2.6版本，后端采用egg开发，数据库采用mysql,三种权限角色，其中包括，在线预约社区全职医生，疾病管理，居民的膳食健康，运动的健康，健康知识的普及，也包含着档案信息的管理，系统的管理，药品的管理等功能模块。具体的功能模块分别为：</br>

1）系统管理：包括用户的管理，角色的管理，日志的管理。根据用户划分权限分为管理员，社区医生和普通用户分为这三种用户。这三种角色所能够使用的系统资源会根据身份的不同而发生变化。管理员用户可以创建普通用户账号、编辑普通的信息及账号登录状态。用户具备个人信息修改、密码修改及退出登录功能。普通用户可自己注册账号。管理员的账号由后台创建，社区医生的账号则只能由管理员创建，同时也只有管理员才能进行角色的管理。管理员进行查看用户的日志消息的操作。记录用户操作信息。</br>
2）推荐管理：主要是膳食的推荐，跟运动的推荐。膳食推荐社区医生对食物进行分类，列出所有的食物基本信息，运动推荐也是社区医生进行分类，列出运动的基本信息，然后社区医生推荐那些人群做什么运动，社区医生对其进行分类，根据电子病例的医生给出的建议进行推送。社区居民进行浏览，查看。</br>
3）档案管理：管理员对居民基本信息进行管理，可以模糊按条件查找居民的基本信息，增加修改录入，批量导入居民信息，批量导入的时候默认生成账号密码。实现基本居民信息的基本电子信息化。</br>
4）数据管理：包括社区居民健康生理数据的管理,生活习惯数据的管理。生理数据主要是社区医生采集社区居民的身高，体重，根据身高体重计算BMI，根据收缩压，舒张压，判断居民的血压，还包括脉搏，血氧得出居民得身体状态，同时还应记录他们的血型。生活习惯数据管理包括记录居民的体育锻炼，锻炼的时长，饮食爱好，睡眠时长，饮酒情况，吸烟情况。社区居民进行查看。</br>
5）疾病管理：包括，现患病着，既往病史，家族病史的管理。现患病着记录社区患病人，方便社区医生，进行追踪治疗关心社区患病着；既往病史，记录社区居民的既往病史，如疾病名称，是否治愈，过敏物质，是否残疾等。家族病史，记录每个居民家里是否有一些特殊的遗传病史。</br>
6）预约管理：社区居民在线预约无需排队，也方便社区医生知道当天就医情况。包括社区居民预约的基本信息跟所预约的全职医生，预约时间，跟预约人数，排号。管理员进行管理，可以进行修改状态。</br>
7）电子病历：记录社区居民的看病信息。社区医生对社区居民的基本信息查看，询问病者身体状态，开出新的电子病历给社区居民。只有医生才拥有看病的权力，开出相应的药单，记录用药情况。</br>
8）文章咨询：包括社区的新闻，公告，以及普及一些健康知识的文章给居民查阅。包括增删改查。社区居民也可以分享文章。</br>
9）数据分析：社区管理员跟医生可以通过用饼状图、数据统计社区居民人数，患病数，等进行可视化的数据展示柱状图得查看。</br>
10）药品管理：社区管理员对药品的基本信息，跟库存进行维护管理，方便社区医生开药的时候，方便选择药品。</br>
11）社区内容：包括公告，新闻，文章，社区群聊的查看与交流，主要面向社区医生及社区居民进行查看，交流。</br>

#### 1.1社区医生

社区医生用户是社区健康服务管理后台系统最重要的服务对象，其主要的业务包括首页的查看，电子病历的处理，健康生理数据的管理，生活习惯数据的管理，疾病的管理，推荐的管理，查看社区内容，修改个人账信息。</br>

1）查看首页。登录首页即可查看社区基本信息可视化图表展示。</br>

2）电子病历的处理，社区医生查看当天的预约情况，进行对病人相应问诊和开药, 生成新的相应的电子病历。</br>

3）数据管理：主要包括健康生理数据及生活习惯数据，社区医生可以进行相应的录入修改，删除，按条件查找对应的信息，以供看病的时候参考。社区居民也可查看相应的自己信息。</br>

4）疾病的管理，疾病的管理包括，现患病着，既往病史，家族疾病。对患着进行相应的处理，录入，修改，查找，删除，批量删除。对现患着进行电话访问等。</br>

5）推荐管理：社区医生对膳食进行增添，食物的属性，分类，图片等，对运动进行增加，修改，删除，分类，适合的人群，应达到可以分类给不同的社区居民查看到自己相应的信息。</br>

6）查看社区内容：社区居民用户，可以查看相应的社区公告，社区新闻，社区文章，在社区文章里面也可以分享自己的文章，在社区群聊查看信息，也可以进行聊天交流。</br>

7）修改个人账号信息：修改自己的头像，密码。</br>

#### 1.2社区管理员

管理员用户是社区健康服务管理系统的维护者对系统拥有绝对的权限，其主要业务包括，查看首页，电子病历的查看，预约的管理，档案管理，文章咨询管理，系统管理，药品管理以及修改个人账信息。</br>

1）查看首页。登录首页即可查看社区基本信息可视化。</br>

2）电子病历，只能进行查看。</br>

3）预约的管理。管理员可以查看预约情况，可以按条件进行相应的检索，修改对应的预约状态。</br>

4）档案管理。管理员可以查看你社区的档案信息。对其进行检索，新增，修改，删除。也可以导出向相应的信息，下载模板，批量导入社区居民的相应信息。</br>

5）文章咨询管理，包括社区的公告，新闻，文章的基本操作与发布。</br>

6）系统管理，包括角色的管理，用户的管理，及日志的管理，角色的管理就是对应权限，角色的一些基本信息的修改，新增角色，以及对应操作修改。用户主要是创建用户的账号，社区医生的账号只能由超级管理员来创建。</br>

10）药品管理：包括药品的基本信息的管理，跟药品库存的管理。</br>

11）修改个人账号信息：修改自己的头像，密码。</br>

#### 1.3社区居民

社区居民用户是社区健康服务管理系统的最重要的服务对象，社区居民可以注册登录，更新个人信息，登录普通用户端，查看我的预约，查看我的推荐，查看社区内容包括社区公告，新闻，文章及分享文章，社区群聊，查看下载电子病历。录入或更新生活习惯情况，录入修改历史疾病情况，录入家族病史情况以及修改个人账信息。</br>

1）注册登录：社区居民在社区健康服务管理系统的普通用户端进行注册账号，就可以登录系统。</br>

2）更新个人信息：社区居民可以在我的基本信息里面更新自己的资料。</br>

3）我的预约：社区居民可以在我的预约记录查看我的预约，若是我的状态为待处理，可以进行取消操作。</br>

4）查看社区内容：社区居民用户，可以查看相应的社区公告，社区新闻，社区文章，在社区文章里面也可以分享自己的文章，在社区群聊查看信息，也可以进行聊天交流。</br>

5）查看下载电子病历：社区居民用户可以查看当前的电子病历，也可以点击下载按钮，进行下载。</br>

6）录入或更新生活习惯情况：社区居民可以查看自己生活习惯情况，如有则是更新，没有就是录入，也可以点击进行下载。</br>

7）录入修改历史疾病情况：社区居可以查看下载当前的自己的疾病史，点击录入按钮进行录入，点击修改按钮进行修改。</br>

8）录入家族病史情况：查看自己家族病史，如有家族遗传病则是进行的相应的录入。</br>

9）修改个人账号信息：修改自己的头像，密码。</br>

### 2.涉及技术（后端）

egg+js+mysql
</br>
1.jwt token的校验</br>

2.exceljs做导入，导出</br>

3.moment，silly-datetimes时间日期的处理</br>

4.md5加密密码</br>

6.svg-captcha进行生成码验证，返回一张图片</br>

7.nodemailer发动qq邮件。</br>

8.采用cors进行跨域处理。

9.domainWhiteList设置可访问名单，增加安全性

### 3.主要功能介绍

主要功能，增删改查，下载文件，上传文件，批量删除，批量导入，查看详情，下载详情，分页查询，多条件查询，上传图片，在线聊天,邮箱的发送，jwt token的生成与校验，md5进行密码，验证码的生成，数据库采用的是mysql数据库等。

#### 说明：

​     因为这是本人首次利用egg框架，并没有使用egg封装的方法，更多的是原生的写法，至于安全性你可以使用model来与egg封装的方法配合进行优化避免sql注入。

### 4.客户端项目运行

```bash

### Tips:
- 使用 yarn 包管理工具
yarn install           -------安装所有依赖
yarn dev               -------运行项目

"node": ">=10.0.0"
 
```

### 特别说明

```socket.io是单独的文件，也需要单独的安装依赖跟运行，它是聊天的单独服务```

后台登录时可以看数据库里的账号哈，默认密码都是加密后的。123456

</br>

客户端地址：https://github.com/wskang12138/healthyCommunityClient
</br>
后台管理地址：https://github.com/wskang12138/healthyCommunityBackstage

</br>
后端包括完整的代码，数据库，聊天服务。

This will automatically open http://127.0.0.1:7001

