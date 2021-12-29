<?php
session_start();
$_SESSION['username']="swap";
$_SESSION['ss']="tare";
if(isset($_SESSION['username'])){
echo "welcome ".$_SESSION['username']."<br>";
echo "Sirname ".$_SESSION['ss'];
}
else{
  echo "  please login";
}
?>