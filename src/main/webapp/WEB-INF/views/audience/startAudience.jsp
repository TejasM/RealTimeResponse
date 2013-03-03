<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>StudentInfo</title>
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.0/jquery.mobile-1.3.0.min.css" />
	<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.3.0/jquery.mobile-1.3.0.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css" />		
<script type="text/javascript">
	$(function() {
		var slider = $("#slider-step");
		slider.bind("slidestop", function(event) {
			var value = this.value;
			$.post('audienceResponse', {
				"value" : value
			}).fail(function(jqXHR, textStatus, errorThrown) {
				alert("Error" + errorThrown);
			});
		});
	});
	function postQuestion() {
		var question = $("#myQs");
		$.post('audienceQuestion', {
			"question" : question.val()
		}).fail(function(jqXHR, textStatus, errorThrown) {
			alert("Error" + errorThrown);
		}).always(function() {
			question.val('');
		});
	};
</script>
</head>
<body>
	<div data-role="page">
		<div id="container">
			<div data-role="header" class="center">
				<h1>Page Title</h1>
			</div>
			<!-- /header -->

			<div data-role="content" id="s" data-role="fieldcontain">
				<label for="slider-step">Input slider:</label> <input data-theme="a"
					data-track-theme="b" type="range" name="slider-step"
					id="slider-step" value="3" min="0" max="4" step="1" />
			</div>

			<div data-role="content" id="QuestionContainer"
				data-role="fieldcontain">
				<label for="Questions">Ask a Question:</label> <input type="text"
					name="Quenstions" id="myQs" value="" />
			</div>

			<div data-role="content">
				<input type="submit" value="Submit Button" onclick="postQuestion()" />
			</div>
		</div>
	</div>
</body>
</html>
