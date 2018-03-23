exploit4.exe程序运行后，会读取当前目录下的input.txt的内容，并根据后续输入的block size来计算文件可以分割成多少块。exploit4.exe程序存在缓冲区溢出漏洞，但是编译时使用了safeseh和GS。请想办法绕过safeseh和GS保护机制，使其成功执行shellcode（shellcode功能为在9999端口建立一个服务器等待连接）
1.其中input.txt是可以任意修改的，block size也可任意输入；
3.本题成功溢出，意味着运行Exploit.exe，输入block size后，可以执行事先构造的shellcode，
  shellcode为在9999端口建立一个服务器等待连接；
4.实验环境：windows XP SP3
(12分)
