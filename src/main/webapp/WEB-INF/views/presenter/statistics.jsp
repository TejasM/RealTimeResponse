<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="../template/template.jsp"%>

<html>
<body>
	<script type="text/javascript">
		$(function(){
			setInterval(updatePercentage, 1000);
		});
		function updatePercentage() {
			$.get('statistics', function(data) {
				$('#value1').html(data.value1);
				$('#value2').html(data.value2);
			}).fail(function(jqXHR, textStatus, errorThrown) {
				alert("Error" + errorThrown);
			});
		}
	</script>
	<div id="value1"></div>
	<div id="value2"></div>
</body>
</html>
