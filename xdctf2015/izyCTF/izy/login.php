<?php 
error_reporting(0);
if (isset($_GET['action'])) {
	session_start();
	$action=$_GET['action'];
	if ($action=='Login') {
		
		$username=addslashes($_POST['Username']);
		$password=addslashes($_POST['Password']);
		
		if($username&&$password){
			$link=mysql_connect('127.0.0.1','root','qazwsx');
			mysql_select_db('waftest',$link);
			$password=substr(md5($password),5,20);
			$sql='select * from user where username="'.$username.'" and password="'.$password.'"';
			$result=mysql_query($sql);
			$num=mysql_num_rows($result);
			if ($num>0) {
				$raw=mysql_fetch_array($result);
				$_SESSION['Username']=$raw['username'];
				echo '<script>alert("Login success!")</script>';
			}else{
				echo '<script>alert("Password error!")</script>';
			}
			echo "<script>window.setTimeout(window.location='./index.php',2000)</script>";
		}
	}
	if ($action=='Logout') {
		session_destroy();
		unset($_SESSION['Username']);
		echo "<script>window.setTimeout(window.location='./index.php',2000)</script>";
	}
}
echo "<!--brte-->"


?>