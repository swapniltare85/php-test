<?php
// $a=readfile("myfile.txt");
// echo $a;
$fptr=fopen("myfile.txt", "r");
// echo $fptr
if(!$fptr){
    die("error");

}
$content=fread($fptr, 100);
fclose($fptr);
echo $content;
echo "<br>";
?>

<?php
// session destroy
session_start();
session_unset();
session_destroy();
if(isset($_SESSION['username'])){
echo "log out";
}
else{
    echo "log in";
}

?>