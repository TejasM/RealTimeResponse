<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<t:template>
	<jsp:attribute name="header">
      <h1>Welcome</h1>
    </jsp:attribute>
	<jsp:attribute name="footer">
    </jsp:attribute>
	<jsp:body>
	<script type="text/javascript">
		$(function() {
			setInterval(updatePercentage, 1000);
		});
		function updatePercentage() {
			$.post('statistics', function(data) {
				$('#value1').html(data.value1);
				$('#value2').html(data.value2);
			}).fail(function(jqXHR, textStatus, errorThrown) {
				alert("Error" + errorThrown);
			});
		}
	</script>
	<div id="value1"></div>
	<div id="value2"></div>
	 </jsp:body>
</t:template>
