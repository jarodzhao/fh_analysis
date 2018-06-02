<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新的世界</title>
<link rel="stylesheet" href="${basePath }/css/style.css" />

<!-- jquery 相关 -->
<script src="${basePath }/static/jquery/jquery.js"></script>
<script src="${basePath}/js/newIndex.js"></script>

</head>
<body>
	<jsp:include page="toolbar.jsp"></jsp:include>

	新的世界，新的开始！
	<br>

	<div id="theForm">
		<input type="text" id="sign_state" applyUserId="001" value="999"><br>
		<input type="text" id="sign_state" applyUserId="002" value="888"><br>
		<input type="text" id="sign_state" applyUserId="003" value="777"><br>
		<button id="sublime">提交状态</button>
	</div>

</body>
</html>
























