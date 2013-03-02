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
	<div id="box">
		<form method="POST" action="">
			<table>
				<tr>
					<td align="right"><p id="text">User Id:</p></td>
					<td align="left"><input type="text" name="j_username">
					</td>
				</tr>
				<tr>
					<td align="right"><p id="text">Course Code:</p></td>
					<td align="left"><input type="password" name="courseCode"></td>
				</tr>
				<tr>
					<td align="right"><input type="submit" value="Log In"></td>
					<td align="left"><input type="reset" value="Reset"></></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
