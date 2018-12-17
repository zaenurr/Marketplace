

<html>
<head><title>Register</title></head>
	<style>
	html, body {
		margin: 1px;
		border: 0;
	}
	</style>
<body>
	<div align="center">
		<div style=" border: solid 1px #006D9C; " align="left">
			
			<div style="background-color:#006D9C; color:#FFFFFF; padding:10px;"><b>Register</b></div>
			<div style="margin: 15px">
				<form action="controller/create-sign.php" method="post">
					<input type="text" name="email" placeholder="Enter your email!">
					<br>
					<input type="password" name="password" placeholder="Enter your password!">
					<br>
					<input type="password" name="repassword" placeholder="Re-Type Password!">
					<br>
					<input type="text" name="level" value="Customer">
					<br>
					<input type="submit" name='register' value="Register" class='submit'/><br />
				</form>
			</div>
		</div>
	</div>
</body>
</html>
