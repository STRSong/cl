# <center>说明书</center>
## 1.原系统介绍
项目名：长大一条龙<br/>
目的：
  为生活在长大的学生提供方快捷的生活服务，通过帖子发现自己志同道合的朋友，记录自己在长大点滴。<br/>

  本项目的意义在于锻炼团队的scrum能力，加强团队合作能力。确定本项目采用的技术方向：本项目整体采用java web 实现，前端采用HTML+CSS+JavaScript实现，后端采用JSP+Servlet实现。
### &nbsp;&nbsp;&nbsp;&nbsp;原系统已经实现的功能：登录功能、成绩查询功能、课表查询功能，登录功能采用教务处登录接口判断是否是合法的用户。
团队分工：

    唐倩 产品负责人
    曾媛 测试（客户）
    杨玲玲 Scrum主管
    邓贻波 后端程序员
    罗伟男 后端程序员
    杨洋   前端程序员
    冷佳丽 前端程序员
## 2.模块拆分
### &nbsp;&nbsp;&nbsp;&nbsp;模块大致可分为3个模块:校园助手、生活圈、长大论坛
### &nbsp;&nbsp;&nbsp;&nbsp;1）.校园助手主要是为学生提供便利的服务：如已经实现的查询成绩、查询课表，后期还可加入快速评教、查询空教室等实用的功能。
### &nbsp;&nbsp;&nbsp;&nbsp;2）.生活圈提供失物招领和快递代取等功能（未实现），可以自由添加
### &nbsp;&nbsp;&nbsp;&nbsp;3）.长大论坛：用户登录之后可以发帖交流的长大生活、心得体会等，这个模块可以使用discuz快速搭建也可以自己从头到尾实现论坛功能。

## 3.接口说明
&nbsp;&nbsp;&nbsp;&nbsp;由于学校不对个人提供查询接口，需要自己对请求进行解析。

登录接口：http://jwcxxcx.ccsu.cn/jwxt/Logon.do?method=logon tips:请求时需要带上cookie
<center>
<table>
<tr><td>参数</td><td>说明</td></tr>
<tr><td>USERNAME</td><td>学号</td></tr>
<tr><td>PASSWORD</td><td>身份证后六位</td></tr>
</table>
</center>
成绩查询接口：http://jwcxxcx.ccsu.cn/jwxt/xszqcjglAction.do?method=queryxscj tips:请求时需要带上cookie
<center>
<table>
<tr><td>参数</td><td>说明</td></tr>
<tr><td>kksj</td><td> 开课时间</td></tr>
<tr><td>kcxz</td><td>课程性质</td></tr>
<tr><td>kcmc</td><td>课程名称</td></tr>
<tr><td>xsfs</td><td>显示方式</td></tr>
<tr><td>kcdl</td><td>课程大类</td></tr>
<tr><td>kssj</td><td>考试时间</td></tr>
</table>
</center>

## 4.前端设计
前端可以采用css+html也可以使用集成前端框架来进行快速开发，例如layui等。<br/>
使用layui设计的登录页。
 ![](https://i.imgur.com/ILNBeRt.png)
主页
 ![](https://i.imgur.com/d301Zfr.png)

## 5.数据库设计
&nbsp;&nbsp;&nbsp;&nbsp;由于以前开发没有需要使用数据库的地方，所以没有将数据存储到数据库，在后续的开发中可能需要存储登录用户的信息以便后续功能可以直接使用本地的数据而不是每次都使用接口去解析。例如用户登录时如果数据库中没有记录则去接口查询，然后添加进数据库，下次再登录时直接从数据库查询，而不必走登录接口提高响应速度。

## 6.参考资料
#### [1] layui 经典模块化前端框架 https://www.layui.com/doc/
#### [2] 旧版教务系统登录入口 http://jwcxxcx.ccsu.cn/jwxt/
