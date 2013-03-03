<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
	<head>
		<link rel="stylesheet" href="http://code.jquery.com/mobile/1.0a3/jquery.mobile-1.0a3.min.css" />
		<script type="text/javascript" src="http://code.jquery.com/jquery-1.4.3.min.js"></script>
		<script type="text/javascript" src="http://code.jquery.com/mobile/1.0a3/jquery.mobile-1.0a3.min.js"></script>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css" />		
	</head>
    <body>
		<div data-role="page" >
		    <form method="POST" action="">
				<div id="container" style="background: #000000 url('resources/images/titlePage.png'); background-repeat:no-repeat;" />
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
