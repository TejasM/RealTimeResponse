<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Prof Data</title>
		<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.0/jquery.mobile-1.3.0.min.css" />
		<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
		<script src="http://code.jquery.com/mobile/1.3.0/jquery.mobile-1.3.0.min.js"></script>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css" />		
<script type="text/javascript">
	$(function() {
		setInterval(updatePercentage, 2000);
		function updatePercentage() {
			$.get('statisticsGet', function(data) {
				$('#Percent1').html(data.value1);
				$('#Percent2').html(data.value2);
			}).fail(function(jqXHR, textStatus, errorThrown) {
				alert("Error" + errorThrown);
			});
			$.get('questions').done(function(questions) {
				$("#List").empty();
				$.each(questions, function(index, question) {
					$("#List").append("<li>" + question + "</li>");
				});
			}).fail(function(jqXHR, textStatus, errorThrown) {
				alert("Error" + errorThrown);
			});
		}
		$("#flip-1").bind("change", function(event, ui) {
			$("#List").toggle();
		});
	});
</script>
</head>
<body>

	<div data-role="page">
		<div id="container">
			<div data-role="header" class="center">
				<h1>${courseId}</h1>
			</div>
			<!-- /header -->

			<div data-role="content" id="Percent1">
				<input style="background-color: #;">			
			</div>
			<div data-role="content" id="Percent2"></div>

			<div data-role="content" id="QuestionList">
				<ul id="List">
				</ul>
			</div>

			<div data-role="content">
				<label class="margin" for="flip-1">Question Switch:</label> <select
					name="flip-1" id="flip-1" data-role="slider">
					<option value="off">Off</option>
					<option value="on">On</option>
				</select>
			</div>

			<!--Get Info -->
			<div data-role="Analysis">
				<input type="submit" value="Get Session Analytics" />
			</div>
		</div>
	</div>
	<!-- /page -->

</body>
</html>