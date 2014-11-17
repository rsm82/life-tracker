<%!String ctxt = "";%>
<%
	ctxt = (String) request.getContextPath();
%>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />		
		<title>Prototype web app | Welcome</title>
		<link rel="stylesheet" href="<%=ctxt%>/css/protoCommon.css"></link>
	</head>
	<body>
	<div id="login-wrapper" class="png_bg">
		<h1>Welcome valid user</h1>
	</div>
	</body>
</html>