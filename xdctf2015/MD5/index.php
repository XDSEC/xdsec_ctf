<?php
if(isset($_GET['test']))
{
	$test=$_GET['test'];
	$test=substr(md5($test),0,7);
	if($test=='0')
	{
		echo 'flag{XTchInaIqLRWlJF0RI59aoVr5atctVCT}';
	}
	else
	{
		print "you are falied!";
	}
}
echo "<html><head>";
echo "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />";
echo "<style>";
echo ".csscenter{text-align:center}";
echo "</style>";
echo "</head>";
echo "<body>";
echo "<div style='margin-left:30%;margin-top:10%;margin-right:30%; width:700px;height:400px; border:1px solid #999;padding:3px;'>
		<font   style='font-size: 24px;'>
		MD5即Message-Digest Algorithm 5（信息-摘要算法5），用于确保信息传输完整一致。是计算机广泛使用的杂凑算法之一（又译摘要算法、哈希算法），主流编程语言普遍已有MD5实现。将数据（如汉字）运算为另一固定长度值，是杂凑算法的基础原理，MD5的前身有MD2、MD3和MD4</br>。
MD5算法具有以下特点：</br>
1、压缩性：任意长度的数据，算出的MD5值长度都是固定的。</br>
2、容易计算：从原数据计算出MD5值很容易。</br>
3、抗修改性：对原数据进行任何改动，哪怕只修改1个字节，所得到的MD5值都有很大区别。</br>
4、弱抗碰撞：已知原数据和其MD5值，想找到一个具有相同MD5值的数据（即伪造数据）是非常困难的。</br>
5、强抗碰撞：想找到两个不同的数据，使它们具有相同的MD5值，是非常困难的。<a href='index.php?test=aaaa'>test</a></br>
</div>
</font></div>";
echo "</body>";
echo "</html>";
?>
<!--aaa
$test=$_GET['test'];
	$test=substr(md5($test),0,7);
	if($test=='0')
	{
		print "flag{xxxxxx}";
	}
	else
		print "you are falied!";
	print $test;
tips:知道原理了，请不在当先服务器环境下测试，在本地测试好，在此测试poc即可，否则后果自负
-->