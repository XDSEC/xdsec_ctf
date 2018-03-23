<html>
    <head>
        <title> Crack Me Verify </title>
    </head>
    <body>
    <?php
if (!isset($_GET["token"]) || $_GET["token"] != "FB73jfUvfrDvzde!8") {
?>
   <form method="get" action="verify.php">
            <div class="form_description">
            <h2>Check Your Serial!</h2>
                <p>If error occurred, please check your keygen. Are you sure IT IS COMPLETELY RIGHT?
                 If you sure, contact at us for further support. </p>
        </div>                      
              <label>Machine Code </label>
              <input name="machine" class="element text large" type="text" maxlength="255" value=""> 
        <br>
              <label>Serial Key </label>
              <input name="key" class="element text large" type="text" maxlength="255" value=""> 
        <br>
              <input type="hidden" name="token" value="FB73jfUvfrDvzde!8">
              <input type="submit" name="submit" value="Submit">
        </form>
    <?php
} else {
    //check
    //get args and delete all whitespaces
    $machine=$_GET["machine"];
    $machine = preg_replace('/\s+/','',$machine);
    $key=$_GET["key"];
    $key = preg_replace('/\s+/','',$key);

    //preg
    if ( preg_match("/[^a-fA-F0-9]/mi",$machine.$key) !=0 )
    {
        die("You Bad Bad!");
    }
    $exec = "./F1na3_CMKGVprer8cVxuqweD " . $machine . " " . $key;
    $ret  = exec($exec);
    if ($ret == "Succeed!!" )
        die("Excellent! The flag is: XDCTF{1azy_Cm_15_2_s1mp0!}");
    else
        die("You Bad Bad!");
}
?>
   </body>
</html>
