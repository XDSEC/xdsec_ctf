题目简介：
    这是一道MISC题目，flag藏在图片中（zzzzzzyu.png）

题目考查点：
    图片隐藏数据的分析与提取，esoteric programming language的了解（brainfuck）

解题思路：
    使用BrainTools的decode命令提取隐藏数据（隐藏的是brainfuck代码）
    BrainTools的下载地址：https://github.com/mbikovitsky/BrainTools
    做题者看到"++[ ->+"意识到这是brainfuck代码，将其放到在线转化平台，即可得到key
    在线转化平台地址：http://www.splitbrain.org/services/ook


其它说明：
（1）建议分值：100-200
（2）提供给做题者zzzzzzyu.png即可
（3）bf_code.txt中是隐藏到图片中的brainfuck代码；org.png是未隐藏数据的图片
（4）flag.txt,bf_code.txt,org.png不提供给做题者；仅供审题者审题；

ps：请审题者按照解题思路进行解题，看是否能够得到flag或者有无其他bug