<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="../template/template.jsp"%>

<html>

<head>
<title>Spring MVC Starter Application</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript">
	$(function(){
		setInterval(updatePercentage, 1000);
	});
	function updatePercentage() {
		$.get('statistics', function(data) {
			$('#percentage').html(data);
		});
	}
</script>
</head>

<body>
	<div id="percentage"></div>
</body>
</html>
