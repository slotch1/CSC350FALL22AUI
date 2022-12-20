
<?php

$conn = mysqli_connect("localhost","root","root","mydb");
if (!$conn)
  echo "no connection";
else
{
 
$firstname = $_POST['firstname'];
  $lastname = $_POST['lastname'];
  $AptId = $_POST['AptId'];
  $password = $_POST['password'];
$sql="insert into usertable(name,lastanme,aptid,password) values ('$firstname','$lastname','$AptId','$password')";
if(mysqli_query($conn,$sql))
  include('Create_Account_Or_Login_1.html');
  else
    echo "<p> nothing inserted";
}




?>
</body>
</html>

</html>