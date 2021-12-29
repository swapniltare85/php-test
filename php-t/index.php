<!doctype html>

<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Hello, world!</title>
</head>

<body>
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

?>
    <?php
if($_SERVER['REQUEST_METHOD']=='POST'){
    $name=$_POST['name'];
    $email=$_POST['email'];
    $desc=$_POST['desc'];
    
 if($name==null){
     echo "please fill the name";
 }
 else{
  $insertct="INSERT INTO `contactus` ( `name`, `email`, `description`, `date`, `sts`) 
  VALUES ( '$name', '$email', '$desc', current_timestamp(), '0')";
   $result=mysqli_query($conn, $insertct);
   if($result){
    echo '<div class="alert alert-success alert-dismissible fade show" role="alert">
    <strong>Successs! </strong>Your record has inserted Successsfully.
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
  </div>';
   }
   else{
    echo '<div class="alert alert-danger alert-dismissible fade show" role="alert">
    <strong>Error! </strong>Your are facing some technical issues.
    Your record was not inserted.
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
  </div>';
   }
 }
}



    ?>

    <div class="container mt-4">
        <h2>Contact Us</h2>
        <form action="index.php" method="post">
            <div class="mb-3">
                <label for="exampleInputname" class="form-label">Name</label>
                <input type="name" class="form-control" id="name" aria-describedby="nameHelp" name="name">

            </div>
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Email address</label>
                <input type="email" class="form-control" id="email" aria-describedby="emailHelp" name="email">

            </div>
            <div class="mb-3">
                <label for="exampleInputDescription" class="form-label">Description</label>
                <textarea rows="5" cols="5" type="text" class="form-control" id="description"
                    aria-describedby="descriptionlHelp" name="desc"></textarea>
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

    <?php
$selectCu="select* from contactus where sts=0";
$sresult=mysqli_query($conn, $selectCu);

$num=mysqli_num_rows($sresult);
echo $num;
echo "<br>";
if($num>0){
    // $row=mysqli_fetch_assoc($sresult);
    // echo var_dump( $row);
    // echo "<br>";
    while($row=mysqli_fetch_assoc($sresult)){
        // echo var_dump( $row);
        echo $row['sno'] ." ".$row['name']." ".$row['email']." ".$row['description'];
        echo "<br>";
    }
}
?>
    <div class="container mt-4">


    </div>






    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>


</body>

</html>