<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<t:template>
	<jsp:attribute name="header">
    </jsp:attribute>
	<jsp:attribute name="footer">
    </jsp:attribute>
	<jsp:body>
<script type="text/javascript">
	$(function() {
		var slider = $("#slider-step");
		slider.bind("slidestop", function(event) {
			var value = this.value;
			$.post('audience/audienceResponse', {
				"value" : value
			}).fail(function(jqXHR, textStatus, errorThrown) {
				alert("Error" + errorThrown);
			});
		});
	});
</script>
<label for="slider-step">Input slider:</label>
<input type="range" name="slider-step" id="slider-step" value="150"
			min="0" max="4" step="1" />
</jsp:body>
</t:template>