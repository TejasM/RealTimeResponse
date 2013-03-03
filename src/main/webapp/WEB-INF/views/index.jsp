<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
	<head>
		<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no" />
		<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.0/jquery.mobile-1.3.0.min.css" />
		<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
		<script src="http://code.jquery.com/mobile/1.3.0/jquery.mobile-1.3.0.min.js"></script>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css" />		
	</head>
    <body>    	
		<div data-role="page" >
		    <form method="POST" action="">
				<div id="container" />
				<div data-role="content" id="LoginContainer" data-role="fieldcontain">
					<label for="Login">Login:</label>
					<input type="text" name="Login" id="Login" value=""  />
				</div>
				
				<div data-role="content" id="PasswordContainer" data-role="fieldcontain">
					<label for="Password">Course Code:</label>
					<input type="text" name="Password" id="Password" value=""  />
				</div>
				
				<div data-role="content" id="IsTeacherContainer" data-role="fieldcontain">
					<label for="IsTeacher">Teacher:</label>
					<input type="text" name="IsTeacher" id="IsTeacher" value="Yes"/>
				</div>
				
				<div data-role="content" >				
					<input type="submit" value="Submit Button" />
				</div>
			</form>
		</div>
	 </body>
</html>
