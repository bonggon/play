<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType = "text/html;charset=utf-8" %>
<html>
<head>
	<title>바글바글</title>
	<link href="<c:url value="/resources/form.css" />" rel="stylesheet"  type="text/css" />		
	<link href="<c:url value="/resources/jqueryui/1.8/themes/base/jquery.ui.core.css" />" rel="stylesheet" type="text/css"/>
	<link href="<c:url value="/resources/jqueryui/1.8/themes/base/jquery.ui.theme.css" />" rel="stylesheet" type="text/css"/>
	<link href="<c:url value="/resources/jqueryui/1.8/themes/base/jquery.ui.tabs.css" />" rel="stylesheet" type="text/css"/>
	<script type="text/javascript" src="<c:url value="/resources/jquery/jquery.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/jqueryform/2.8/jquery.form.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/jqueryui/1.8/jquery.ui.core.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/jqueryui/1.8/jquery.ui.widget.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/jqueryui/1.8/jquery.ui.tabs.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/json2.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/handlebars/handlebars-v4.0.5.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/underscore/underscore.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/backbone/backbone.js" />"></script>
	
	
	<!--
		Used for including CSRF token in JSON requests
		Also see bottom of this file for adding CSRF token to JQuery AJAX requests
	-->
	<meta name="_csrf" content="${_csrf.token}"/>
	<meta name="_csrf_header" content="${_csrf.headerName}"/>
</head>
<body>
<h1><a href="<c:url value="/" />">바글바글 쉐어링 서비스</a></h1>
<p>개발환경 구축에 필요한 기술요소들을 공유합니다.</p>
<div id="tabs">
	<ul>
		<li><a href="#backbone">BackboneJs</a></li>
		<li><a href="#simple">Simple</a></li>
		<li><a href="#Handlebars">Handlebars</a></li>
		<li><a href="#aop">AOP</a></li>
		<li><a href="#crud">CRUD</a></li>
		<li><a href="#mapping">Request Mapping</a></li>
		<li><a href="#data">Request Data</a></li>
		<li><a href="#responses">Response Writing</a></li>
		<li><a href="#messageconverters">Message Converters</a></li>
		<li><a href="#views">View Rendering</a></li>
		<li><a href="#convert">Type Conversion</a></li>
		<li><a href="#validation">Validation</a></li>
		<li><a href="<c:url value="/form" />" title="forms">Forms</a></li>
		<li><a href="<c:url value="/fileupload" />" title="fileupload">File Upload</a></li>
		<li><a href="#exceptions">Exception Handling</a></li>
		<li><a href="#redirect">Redirecting</a></li>
        <li><a href="#async">Async Requests</a></li>
    </ul>
    
	<%@include file="samples/backbonejs.jsp" %>
	<%@include file="samples/simple.jsp" %>
	<%@include file="samples/handlebars.jsp" %>
	<%@include file="samples/aop.jsp" %>
	<%@include file="samples/crud.jsp" %>
	<%@include file="samples/mapping.jsp" %>
	<%@include file="samples/data.jsp" %>
	<%@include file="samples/responses.jsp" %>
	<%@include file="samples/message-converter.jsp" %>
	<%@include file="samples/views.jsp" %>
	<%@include file="samples/type-conversion.jsp" %>
	<%@include file="samples/validation.jsp" %>
	<%@include file="samples/exceptions.jsp" %>
	<%@include file="samples/redirect.jsp" %>
	<%@include file="samples/async.jsp" %>
	
</div>

<script type="text/javascript">
//Append '#' to the window location so "Back" returns to the selected tab
//after a redirect or a full page refresh (e.g. Views tab).

//However, note this general disclaimer about going back to previous tabs:
//http://docs.jquery.com/UI/API/1.8/Tabs#Back_button_and_bookmarking

MvcUtil = {};
MvcUtil.showBackboneSuccessResponse = function(text, element) {
	MvcUtil.showBackboneResponse("success", text, element);
};
MvcUtil.showSuccessResponse = function(text, element) {
	MvcUtil.showResponse("success", text, element);
};
MvcUtil.showErrorResponse = function showErrorResponse(text, element) {
	MvcUtil.showResponse("error", text, element);
};
MvcUtil.showResponse = function(type, text, element) {
	var responseElementId = element.attr("id") + "Response";
	var responseElement = $("#" + responseElementId);
	if (responseElement.length == 0) {
		responseElement = $(
				'<span id="' + responseElementId + '" class="' + type
						+ '" style="display:none">' + text + '</span>')
				.insertAfter(element);
	} else {
		responseElement.replaceWith('<span id="' + responseElementId
				+ '" class="' + type + '" style="display:none">' + text
				+ '</span>');
		responseElement = $("#" + responseElementId);
	}
	responseElement.fadeIn("slow");
};
MvcUtil.showBackboneResponse = function(type, text, element) {
	var responseElementId = element.attr("id");
	console.log(responseElementId);
	var responseElement = $("#" + responseElementId);
	responseElement.html(text);
	responseElement.fadeIn("slow");
};
MvcUtil.xmlencode = function(xml) {
	// for IE
	var text;
	if (window.ActiveXObject) {
		text = xml.xml;
	}
	// for Mozilla, Firefox, Opera, etc.
	else {
		text = (new XMLSerializer()).serializeToString(xml);
	}
	return text.replace(/\&/g, '&' + 'amp;').replace(/</g, '&' + 'lt;')
			.replace(/>/g, '&' + 'gt;').replace(/\'/g, '&' + 'apos;').replace(
					/\"/g, '&' + 'quot;');
};
$(document).ready(function() {
	$("#tabs").tabs();
	$.getScript("<c:url value="/resources/bgsoft/sample_home.js" />");
});
</script>
</body>
</html>