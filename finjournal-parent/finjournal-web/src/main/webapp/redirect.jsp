<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<%!String ctxtPath = "";%>
<%
	ctxtPath = (String) request.getContextPath();
%>
<%System.out.println("welcome>>"+ctxtPath+"<<");%>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Redirect</title>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>


  <script type="text/javascript">
        $(document).ready(function () {
        	
            document.getElementById("finJournalForm").loginId.value = document.UseridApplet.getUserid().toLowerCase();
            document.getElementById("finJournalForm").workstationId.value = document.UseridApplet.getHostName();
            document.getElementById("finJournalForm").submit();      	
        });
 </script>

</head>
<body>

<applet name="UseridApplet" code="UseridApplet.class"
        archive="SPalmUseridAppletApplet.jar" width=0 height=0>
</applet>

<form:form id="finJournalForm" method="post" action='<%=ctxtPath +"/finJournal" %>'>

 <input type="hidden" name="loginId" value=""/>
  <input type="hidden" name="workstationId" value=""/>
</form:form>

</body>
</html>