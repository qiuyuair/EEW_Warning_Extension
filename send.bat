@echo off
:: 抵达时间-5秒，抵消信息传输所需时间
set /A "sec=%2-5"
if %sec% LSS 0 set "sec=0"
set text=台海地震速报，预估震级%1级，%sec%秒后抵达！
echo %text%

:: 配合blat.exe发送邮件
:: 邮件主题
set subject=%text%
:: 正文内容，采用文本预先编辑好，会显示到邮件正文部分
set mail=warning.txt
:: 接收人
set tf=address.txt
:: 发送人
set from=a@example.com
:: 邮件服务器密码
set pw=password
:: 发送消息
blat %mail% -s %subject% -tf %tf% -server smtp.example.com -f %from% -u %from% -pw %pw%

:: 配合cq-http实现QQ消息推送
curl "http://example.com/send_group_msg?group_id=123456&message=⚠️台海地震速报⚠️%%0A预估震级%1级，%sec%秒后抵达！%%0A请注意掩蔽，做好防震准备！&access_token=123456"

timeout /nobreak /t 3
exit

