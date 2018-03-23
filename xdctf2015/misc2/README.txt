1.题目简介：
    这是一道MISC题目，flag藏在areyoukidding文件中
    做题者需要分析areyoukidding中数据，并从中得到flag；

2.题目考查点：
    取证分析，破解加密zip文件

3.此题有提示，提示信息如下：
    wow！zip！zip！winrar 5.0

4.解题思路：
    分析areyoukidding，发现其是一个数据文件。如果熟悉取证分析，就知道使用foremost来分析
    使用foremost，恢复出各种文件；根据提示： wow！zip！zip！winrar 5.0，可知与zip文件相关
    分析恢复出来的zip文件，看到其中一个含有flag.txt和readme.txt,但被加密
    再次分析，发现另外有一个没加密的zip文件中也含有readme.txt，且此readme文件和上一步readme文件的crc值是一样的，所以断定，这两个文件是一样的。
    如果知道pkcrack可以通过泄露的明文破解加密zip文件的话，下面就很简单：使用pkcrack就能破解加密的zip，从而得到flag

5.其他说明：
   （1）建议分值：200-300
   （2）提供给做题者 areyoukidding文件和提示信息
   （3）flag：XDCTF{biiubiiiiiiiiiiiiiiiu&ddddyu}