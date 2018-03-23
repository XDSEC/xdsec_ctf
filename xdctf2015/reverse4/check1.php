<html>
    <head>
        <title> Crack Me Verify </title>
    </head>
    <body>
    <?php
if (!isset($_GET["token"]) || $_GET["token"] != "Fur84Cbjhr_94") {
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
              <label>Username </label>
              <input name="name" class="element text large" type="text" maxlength="255" value=""> 
        <br>
              <label>Serial Key </label>
              <input name="key" class="element text large" type="text" maxlength="255" value=""> 
        <br>
              <input type="hidden" name="token" value="Fur84Cbjhr_94">
              <input type="submit" name="submit" value="Submit">
        </form>
    <?php
} else {
    //check
    //get args and delete all whitespaces
    $machine=$_GET["machine"];
    $machine = preg_replace('/\s+/','',$machine);
    $name=$_GET["name"];
    $name = preg_replace('/\s+/','',$name);
    $key=$_GET["key"];
    $key = preg_replace('/\s+/','',$key);

    //preg
    if ( preg_match("/[^a-zA-Z0-9\-]/mi",$machine.$name.$key) !=0 )
    {
        die("You Bad Bad!");
    }
    $exec = "./kfer73^31_vFyrgeFybrn " . $machine . " " . $name;
    $ret  = exec($exec);
    if ($ret == $key && strlen($key)==35 )
        die("Excellent! The flag is: XDCTF{F1a9_15_HARd!_T0!_F^ind_S4ncE_An71_D1bug9er}");
    else
        die("You Bad Bad!");
}
?>
   </body>
</html>
