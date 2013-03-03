<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.0/jquery.mobile-1.3.0.min.css" />
	<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.3.0/jquery.mobile-1.3.0.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css" />		
</head>
<body>
	<div data-role="page">
		<div id="container">
			<div data-role="header" class="center">
				<h1>Page Title</h1>
			</div>
			<!-- /header -->

			<div data-role="content" id="statDiv" data-role="fieldcontain">
				<label id="statLabel" for="stat">Select a Stat</label> <select
					id="stat" name="state_r" tabindex="2">
					<option value="Understanding">Understanding</option>
					<option value="Interest">Interest</option>
					<option value="Both">Understanding and Interest</option>
					<option value="Custom 1">Custom 1</option>
					<option value="None">None</option>
				</select>
			</div>

			<div data-role="content">
				<label class="margin" for="flip-1">Sound Switch:</label> <select
					name="flip-1" id="flip-1" data-role="slider">
					<option value="off">Off</option>
					<option value="on">On</option>
				</select>
			</div>

			<!--start session -->
			<div data-role="content">
				<form method="POST" action="presenter/startPresentation">
					<input type="submit" value="Start Session" />
				</form>
			</div>

			<div data-role="footer">
				<h4>Page Footer</h4>
			</div>
			<!-- /footer -->
		</div>
	</div>
	<!-- /page -->

</body>
</html>
