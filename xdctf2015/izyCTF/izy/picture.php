<?php
error_reporting(0);
function SQL_DETECT($PictureId){
	$a0=urldecode('%a0');
	$PictureId=str_replace('\d', '', $PictureId);
	$PictureId=str_replace($a0, '', $PictureId);
	$PictureId=str_replace('\/\*.*?\*\/', '', $PictureId);
	if(preg_match('/union|order.*by|and|\dor\d|\|\||sleep|BENCHMARK|substr|ascii|select|mid|right|left|right|substring|substring_index|INSTR|LOCATE/i', $PictureId)){

		$PictureId='1';
		
	}
	return $PictureId;
}
if(isset($_GET['ID']))
{
if($_GET['ID'])
{	
	$PictureId=$_GET['ID'];
	$PictureId=SQL_DETECT($PictureId);
	$sql='select * from user where id = "'.$PictureId.'"';
	$link=mysql_connect('127.0.0.1','root','qazwsx');
	mysql_select_db('waftest',$link);
	$result=mysql_query($sql);
	$data=mysql_result($result, 0,'picture');
	$num=mysql_num_rows($result);

	if ($num>0) {
		if ($data) {
			header("Content-type:image");
			echo $data;
			}else{
				echo 'Pictue error!';
		}
	}else{
		echo 'Picture  not found!';
	}
}
}
else{
	$PictureId=1;
	$sql='select * from user where id = "'.$PictureId.'"';
	$link=mysql_connect('127.0.0.1','root','qazwsx');
	mysql_select_db('waftest',$link);
	$result=mysql_query($sql);
	$data=mysql_result($result, 0,'picture');
	$num=mysql_num_rows($result);

	if ($num>0) {
		if ($data) {
			header("Content-type:image");
			echo $data;
			}else{
				echo 'Pictue error!';
		}
	}else{
		echo 'Picture  not found!';
	}
}
echo "<!--Please input the ID as parameter with numeric value-->";

?>