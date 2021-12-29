<?php
$servername="localhost";
$username="root";
$password="";
$database="swapdb";

$conn = mysqli_connect($servername, $username, $password, $database);

if(!$conn){
    die("Sorry we failed to connect".mysqli_connect_error());
}else{
    // echo "connect successfully!";
}


$selectCu="select* from contactus where sts=0";
$sresult=mysqli_query($conn, $selectCu);

$num=mysqli_num_rows($sresult);
echo $num;
echo "<br>";
$no=1;
if($num>0){
    while($row=mysqli_fetch_assoc($sresult)){
        // echo var_dump( $row);
        echo $no ." ".$row['name']." ".$row['email']." ".$row['description'];
        echo "<br>";
        $no++;
    }
}
$updateCt="update contactus set name='dev' where sno=2";
$sresult=mysqli_query($conn, $updateCt);
if($sresult){
    echo "result updated succesfully";
}
else{
    echo "result was not update";
}
?>