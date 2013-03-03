<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:template>
    <jsp:attribute name="header">
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>
    <jsp:body>
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
					<label for="IsTeacher">Course Code:</label>
					<input type="text" name="IsTeacher" id="IsTeacher" value="Yes"  />
				</div>
				
				<div data-role="content">
					<input type="submit" value="Submit Button" />
				</div>
			</form>
		</div>
	 </jsp:body>
</t:template>
