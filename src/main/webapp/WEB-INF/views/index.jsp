<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:template>
    <jsp:attribute name="header">
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>
    <jsp:body>
	<div id="box">
		<form method="POST" action="">
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
	 </jsp:body>
</t:template>
