<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
	<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no" />
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.0/jquery.mobile-1.3.0.min.css" />
	<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.3.0/jquery.mobile-1.3.0.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css" />		
</head>
<body>
	<div data-role="page">
		<div id="container">
			<div data-role="header" class="center">
				<h1>${courseId}</h1>
			</div>
			<!-- /header -->

			<!--start session -->
			<div data-role="content">
				<input type="submit" value="Join Session" onclick="document.location.href = '${pageContext.request.contextPath}/audience/startaudience';" />
			</div>

		</div>
	</div>
	<!-- /page -->

</body>
</html>
