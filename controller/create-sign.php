<?php
require_once '../model/connect.php';
	$errMsg = '';
	if (isset($_POST['register'])) {	
		// Get data from FROM
		$email		= $_POST['email'];
		$password	= $_POST['password'];
		$repassword	= $_POST['repassword'];
		$level		= $_POST['level'];

		if ($email == null) {
			$errMsg = "Please enter your emal!";
		}
		if ($password == null) {
			$errMsg = "Please enter your password!";
		}
		if ($password != $repassword) {
			$errMsg = "Both password is not same?";
		}

		if($errMsg == null){
			try {
				$stmt = $pdo->prepare('INSERT INTO users (email, password, level) VALUES (:email, :password, :level)');
				$stmt->execute(array(
					':email'	=> $email,
					':password'	=> $password,
					':level'	=> $level
					));
				echo "<script>window.location = '$host';</script>";
				exit;
			}
			catch(PDOException $e) {
				echo $e->getMessage();
			}
		}
	}

?>
<?php
				if(isset($errMsg)){
					echo '<div style="color:#FF0000;text-align:center;font-size:17px;">'.$errMsg.'</div>';
				}
			?>
