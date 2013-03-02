<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="../template/template.jsp"%>

<html>

<head>
<title>Spring MVC Starter Application</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript">
	$(function() {
		var slider = $("#slider-step" );
		slider.bind("slidestop", function(event) {
			var value = this.value;
			$.post('audience/audienceResponse', {"value": value}).fail(function(jqXHR, textStatus, errorThrown) {
				alert("Error" + errorThrown);
			});
		});
	});
</script>
</head>

<body>
	<label for="slider-step">Input slider:</label>
	<input type="range" name="slider-step" id="slider-step" value="150"
		min="0" max="4" step="1" />
</body>

</html>
