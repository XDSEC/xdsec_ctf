1、首先浏览首页,得到robots.txt 提示爆破无用，不再测试爆破
2、首页还存在一个picture.php页面，直接访问，显示图片，查看源码发现有提示Please input the ID as parameter with numeric value
输入参数ID=1 ID=2时 提示Picture not found! 到此找到注入点
3、然后发现存在过滤，WAF规则
4、注入得到账号，密码为20位，发现表中还有dede_cms的表，判断是dedecms的加密方式，去前三后一，得到16位md5:2f4251cb6f43917d  解密得到：lu5631209登陆，访问admin信息页面得到flag
Flag{e0a345cadaba033073d88d2cc5dce2f7}

考察点：信息收集，隐式参数的查找 WAF的绕过,dedecms的加密方式
建议分值400-500


数据库需要降权，给普通查询就行

GRANT ALL PRIVILEGES ON waftest.* TO 'xdctf'@'localhost' \
  IDENTIFIED BY 'JU*WJXHqx';

数据库为waftest
