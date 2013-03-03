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

			<!--start session -->
			<div data-role="content">
				<input type="submit" value="Start Session" onclick="document.location.href = '${pageContext.request.contextPath}/audience/startaudience';" />
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
