# EEW_Warning_Extension
地震速报邮件、QQ推送程序（配合地牛Wake Up）

此程序可配合地牛Wake Up软件，在收到地震速报时实现联动，将速报信息透过邮件、QQ消息、短信（需配合运营商邮箱实现）快速通知至用户。
# 使用方法
## 设置程序联动
在地牛Wake Up软件中点击**设置**-**其他**-**联动设定**。勾选**收到速报且符合预警震度后执行程式**，选择`send.bat`为运行程式，取消勾选**仅执行一次**
## 设置收件邮箱
在 `address.txt`中填入收件邮箱

*如要实现短信接收速报信息，可填入运营商邮箱，并在邮箱设置中打开邮件短信提醒*
## 设置邮件正文
在 `warning.txt`中填入邮件正文内容
## 配置邮件服务器信息
在 `send.bat`中修改`from` `pw` `-server`
## 配置QQ消息推送
在 `send.bat`中配置HTTP POST URI
