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
		var initValue1 = 3;
		var initValue2 = 3;
		var slider1 = $("#slider-step");
		slider1.bind("slidestop", function(event) {
			var value1 = parseInt(this.value) - initValue1;
			$.post('audienceResponse', {
				"value1" : value1,
				"value2" : 0
			}).fail(function(jqXHR, textStatus, errorThrown) {
				alert("Error" + errorThrown);
			});
		});
		slider1.bind("slidestart", function(event) {
			initValue1 = parseInt(this.value);
		});
		var slider2 = $("#slider-step2");
		slider2.bind("slidestop", function(event) {
			var value2 = parseInt(this.value) - initValue2;
			$.post('audienceResponse', {
				"value1" : 0,
				"value2" : value2
			}).fail(function(jqXHR, textStatus, errorThrown) {
				alert("Error" + errorThrown);
			});
		});
		slider2.bind("slidestart", function(event) {
			initValue2 = parseInt(this.value);
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
				<h1>${courseId}</h1>
			</div>
			<!-- /header -->

			<div data-role="content" id="s" data-role="fieldcontain">
				<label for="slider-step">Understanding:</label> <input data-theme="a"
					data-track-theme="b" type="range" name="slider-step"
					id="slider-step" value="3" min="1" max="5" step="1" />
			</div>
		
		 	<div data-role="content" id="s2" data-role="fieldcontain">
				<label for="slider-step2">Interest:</label> <input data-theme="a"
					data-track-theme="b" type="range" name="slider-step2"
					id="slider-step2" value="3" min="1" max="5" step="1" />
			</div>

			<div data-role="content" id="QuestionContainer"
				data-role="fieldcontain">
				<label for="Questions">Ask a Question:</label> <input type="text"
					name="Quenstions" id="myQs" value="" />
			</div>

			<div data-role="content">
				<input type="submit" value="Submit Question" onclick="postQuestion()" />
			</div>
		</div>
	</div>
</body>
</html>
