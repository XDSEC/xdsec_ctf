### Steps:
1. man -P 'command' ls
2. cat `.flag` file in the flag directory
3. http://quipqiup.com/index.php
4. get `/etc/passwd` and `/etc/shadow` (useradd neighbor-old-wang && passwd 666666 && `chmod 644 /etc/shadow`)
5. login as neighbor-old-wang and get the flag.txt(`chmod +r flag.txt` first)
	echo "The real flag is in www.flag.com . That's quiet easy."
6. `curl www.flag.com` to get the real flag. Allow 127.0.0.1 only.(www.flag.com=127.0.0.1)

### Addition:
- 第五步可以再加一个反代理，让参赛者通过ssh代理，进行内网渗透(用docker在本机搭一个内网服务器，在flag.txt这个提示中只提示一个无效的域名，只存在于hosts文件中，通过ping或者查看hosts文件获取真正的ip)，或者简单点，直接放到隔壁主机的80端口，限制只能通过本机IP访问。

### Notice:
- 权限要严格区分好。