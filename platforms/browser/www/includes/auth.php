
<?php
	header('Access-Control-Allow-Origin: *');
  header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS, REQUEST');
//  header('Content-Type: application/json; charset=utf-8');
  header('Access-Control-Max-Age: 3628800');
  header('Access-Control-Allow-Headers: *');


require('db.php');
session_start();
// If form submitted, insert values into the database.
if (isset($_POST['email'])){
        // removes backslashes
	$username = stripslashes($_REQUEST['email']);
        //escapes special characters in a string
	$username = mysqli_real_escape_string($con,$username);
	$password = stripslashes($_REQUEST['password']);
	$password = mysqli_real_escape_string($con,$password);
	//Checking is user existing in the database or not
        $query = "SELECT * FROM `sose_usr` WHERE usr_email='$username'
and usr_senha='".md5($password)."'";
	$result = mysqli_query($con,$query) or die(mysql_error());
	$rows = mysqli_num_rows($result);
        if($rows==1){
			session_start();
			
	    $_SESSION['usr_email'] = $username;
            // Redirect user to index.php
	    header("Location: ../logado.html");
         }else{
	echo "<div class='form'>
<h3>Username/password is incorrect.</h3>
<br/>Click here to <a href='index.html'>Login</a></div>";
	}
    }else{
		
	}
	
	?>
