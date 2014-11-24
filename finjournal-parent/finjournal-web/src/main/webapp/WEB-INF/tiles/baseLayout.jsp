<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% 
String ctxt = (String) request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
  
<html>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><tiles:insertAttribute name="title" ignore="true" /></title>


    <link rel="stylesheet" href="<%=ctxt%>/js/lib/dijit/themes/claro/claro.css" />
    <link rel="stylesheet" href="<%=ctxt%>/js/lib/dijit/themes/soria/soria.css" />
    <link rel="stylesheet" href="<%=ctxt%>/css/usptoCommon.css"></link>
    <link rel="stylesheet" href="<%=ctxt%>/css/baseLayout.css"></link>				
    <link rel="stylesheet" href="<%=ctxt%>/css/body.css"></link>
    <link rel="stylesheet" href="<%=ctxt%>/css/header.css"></link>
    <link rel="stylesheet" href="<%=ctxt%>/css/leftPanel.css"></link>
    <link rel="stylesheet" href="<%=ctxt%>/css/bibliographicData/bibliographicData.css"></link>
    <link rel="stylesheet" href="<%=ctxt%>/css/applicationProcessingHistory/processingHistory.css"></link>
    <link rel="stylesheet" href="<%=ctxt%>/css/transmittalReview.css"></link>
    <script type="text/javascript" src="<%=ctxt%>/js/leftPanel.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/header.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/case/case.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/case/caseInternationalPCT.js"></script>
    <script src="<%=ctxt%>/js/application.js"></script>
    <script src="<%=ctxt%>/js/body.js"></script>
    <script src="<%=ctxt%>/js/utils/dojoUtils.js"></script>
    <script src="<%=ctxt%>/js/utils/utils.js"></script>

    <script type="text/javascript" src="<%=ctxt%>/js/treePanel.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/utils/dialogUtilities.js"></script>

    <script src="<%=ctxt%>/js/bibliographicData/bibliographicData.js"></script>
    <script src="<%=ctxt%>/js/bibliographicData/printBasicInformation.js"></script>
    <script src="<%=ctxt%>/js/bibliographicData/printInventors.js"></script>
    
    <script src="<%=ctxt%>/js/bibliographicData/bibCommon.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/bibliographicData/miscellaneous.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/bibliographicData/inventor.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/bibliographicData/attorney.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/bibliographicData/attorneyCustomerHelper.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/bibliographicData/attorneyRegistrationHelper.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/bibliographicData/applicationInformation.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/bibliographicData/basicInformation.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/bibliographicData/reexamReissue.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/bibliographicData/locationTask.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/bibliographicData/continuityActions.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/bibliographicData/continuityPrintPreview.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/bibliographicData/continuityForeignDialogHelper.js"></script>       
    <script type="text/javascript" src="<%=ctxt%>/js/bibliographicData/domesticContinuity.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/bibliographicData/foreignPriority.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/bibliographicData/correspndnceAddress.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/bibliographicData/applicant.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/bibliographicData/assignee.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/bibliographicData/correspondenceAddressHistory.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/bibliographicData/applicationNumberHistory.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/bibliographicData/internationalApplication371.js"></script>
        <script type="text/javascript" src="<%=ctxt%>/js/bibliographicData/removeAttorney.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/applicationProcessingHistory/processingHistoryMain.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/applicationProcessingHistory/processingHistoryLeftPanel.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/applicationProcessingHistory/processingTitleHistory.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/applicationProcessingHistory/processingHistoryIncomingPackage.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/applicationProcessingHistory/processingHistoryIncomingPackageAdvanced.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/applicationProcessingHistory/processingHistoryLeftPanelMethods.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/applicationProcessingHistory/processingHistoryOutgoingPackage.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/applicationProcessingHistory/processingHistoryTaskAssignment.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/transmittalReview/transmittal.js"></script>
    <script type="text/javascript" src="<%=ctxt%>/js/applicationProcessingHistory/processingHistoryProblems.js"></script>
    <script type="text/javascript">

      // The next line is if console is undefined which is the case for IE'
      if(typeof console === "undefined") 
      {     
		
        var console = { log: function (logMsg) { } };     
       }

      var theContext = getContext();
      // Dojo config the customWidgets directory. async true means the customWidgets will only be downloaded to client onDemand.
       var dojoConfig = (function(){
          return {
              async: true,
              isDebug: true,
              packages: [{
                  name: "customWidgets",
                  location: theContext + "/customWidgets"
              }]
          };
      })();

      
    </script>  

  </head>
	<body class="soria">
	
    <div class="bodyTablecell2">
      <tiles:insertAttribute name="body" />
    </div>
    

    <!-- This iframe is used only for Printing -->
    <iframe id='ifrmPr' src='#' style="width:0px; height:0px; border: none; background:transparent">
    </iframe>      
      
      
  </body>
</html>