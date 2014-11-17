<% 
String ctxt = (String) request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />		
		<title>Prototype web app | Log in</title>
		<link rel="stylesheet" href="<%=ctxt%>/css/protoCommon.css"></link>
		<script type="text/javascript" src="<%=ctxt%>/js/login.js"></script>

</head>
  
	<body id="login">
		<h3>Message: <font color="green">${msgArgument}</font></h3>
		<div id="login-wrapper" class="png_bg">
			<div id="login-top">
				<img src="<%=ctxt%>/img/treemoLabs-logo.png" alt="Prototype web app logo" title="Powered By rsm.org" />			
			</div>
			
			<div id="login-content">
									
					<p>
						<label>UserName</label>
						<input value="" id="username" class="text-input" type="text" />
					</p>
					
					<p>
						<label>Password</label>
						<input id="password" class="text-input" type="password" />
					</p>
					
					<p>
						<input class="button" type="submit" value="Sign In" onclick="validateLogin()"/>
					</p>

			</div>
		</div>
		<div id="dummy"></div>
		<div id="dummy2"></div>
  </body>
</html>
