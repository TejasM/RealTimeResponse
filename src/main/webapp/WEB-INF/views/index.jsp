<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="template/template.jsp"%>

<html>

<head>
<title>Spring MVC Starter Application</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body>
	<div id="container">
		<form method="post" >
			<table>
				<tr>
					<td align="right"><p id="text">User Id:</p></td>
					<td align="left"><input type="text" name="username">
					</td>
				</tr>
				<tr>
					<td align="right"><p id="text">Course Code:</p></td>
					<td align="left"><input type="password" name="courseCode"></td>
				</tr>
				<tr>
					<td align="right"><p id="text">Teacher:</p></td>
					<td align="left"><input type="text" name="isTeacher" value="Yes"/></td>
				</tr>
				<tr>
					<td align="right"><input type="submit" value="Log In"></td>
					<td align="left"><input type="reset" value="Reset"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
