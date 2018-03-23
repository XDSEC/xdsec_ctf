<?php
error_reporting(0);
session_start();
if (!isset($_SESSION['Username'])) {
	$_SESSION['Username']='Anonymous';
}
$Username=$_SESSION['Username'];
// echo '<script>alert("'.$Username.'")</script>';
$link=mysql_connect('127.0.0.1','root','qazwsx');
mysql_select_db('waftest',$link);

?>



<!DOCTYPE html>
<html lang="zh-CN">

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>WIF WORKSPACE</title>

    <!-- Bootstrap -->
    <script src="./js/jq1.9-mini.js"></script>    

<link rel="stylesheet" href="./css/bootstrap.min.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>



  <body style='background-color:#DCDCDC;' >
    <div class='jumbotron'>
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container" >
        <div class="navbar-header">
          <a class="navbar-brand" href="./index.php">Home</a>
        </div>

        <div id="navbar" class="navbar-collapse collapse">

        	<?php 

              	if ($Username=='Anonymous') {
                      $form=' <form class="navbar-form navbar-right" action="./login.php?action=Login" method="POST">';
                      $form=$form.'<div class="form-group">';
                      $form=$form.'<input type="text" name="Username" placeholder="Username" class="form-control">';
                      $form=$form.'</div>';
                      $form=$form.'<div class="form-group">';
                      $form=$form.'<input type="password" name="Password" placeholder="Password" class="form-control">';
                      $form=$form.'</div>';
                      $form=$form.'<button type="submit" class="btn btn-success">Sign in</button>';
                      $form=$form.'</form>';
                      echo $form;
              	}else{
                  		echo '<a class="navbar-brand navbar-right" href="./login.php?action=Logout">Logout</a>';
                  		echo '<a class="navbar-brand navbar-right" href="./index.php?action=imformation">'.$Username.'</a>';
              	}
        	 ?>

        </div><!--/.navbar -->
      </div>
    </nav>



    <!-- Main jumbotron for a primary marketing message or call to action -->

    <div class="jumbotron">
          <div class="container">
            <div class="row">
              <div class="span12">
                <div class="hero-unit">
                	    <?php 
                       		if ($Username=="Anonymous") {

                           			echo '<p style="text-align:center;"> <img alt="200x200" class="img-rounded" src="./Picture.php" /></p>';
                           			$html='<h1> WIF WORK SPACE! </h1>';
                   							$html=$html.'<p> This is a test page! </p>';
                     						$html=$html.'<a class="btn btn-primary btn-large" href="#SleepZZZzzz">SleepzzzZZZ</a>';
                     						echo $html;

                       		}else{

                         				$sql='select * from user where `username`="'.$Username.'"';
                         				$result=mysql_query($sql);
                         				$imformation=mysql_fetch_array($result);
								    if(isset($_GET['action'])){
											if ($_GET['action']=='imformation') {
                                     				echo '<h2 style="text-align:center;">Welcome</h2>';
                                     				echo '<div><h4>User imformation</h4><ul>';
                                     				echo '<li>Username : '.$imformation['username'].'</li>';
													echo 'Flag{e0a345cadaba033073d88d2cc5dce2f7}';
												}
									}
                                    else{

                               				    $html='<h1> WIF WORK SPACE! </h1>';
                       							      $html=$html.'<p> This is a test page! </p>';
                           						    $html=$html.'<a class="btn btn-primary btn-large" href="#SleepZZZzzz">SleepzzzZZZ</a>';
                           						    echo $html;
                           			}
                       		}

                        ?>

                </div>
              </div>
            </div>
          </div>
    </div>


</div>
		<h4 style='text-align:center;color:blue'>Xdsec team!	</h4>	




