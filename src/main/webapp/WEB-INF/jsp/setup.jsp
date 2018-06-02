<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";

	//获取后台传递的类别列表
	@SuppressWarnings("unchecked")
	List<String> type_list = (List<String>) request.getAttribute("type_list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset=utf-8 />
<title>书籍借阅管理系统</title>


<!-- jquery 相关 -->
<script src="${basePath }/static/jquery/jquery.js"></script>

<!-- bootstrap 相关 -->
<script src="${basePath }/static/bootstrap/js/bootstrap.min.js"></script>

<!-- bootstrap-table 相关 -->
<link href="${basePath }/static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${basePath }/static/bootstrap-table/bootstrap-table.css" rel="stylesheet">

<script type="text/javascript" src="${basePath }/static/bootstrap-table/bootstrap-table.js" charset="UTF-8"></script>
<script type="text/javascript" src="${basePath }/static/bootstrap-table/locale/bootstrap-table-zh-CN.js" charset="UTF-8"></script>
<script type="text/javascript" src="${basePath }/static/bootstrap-table/extensions/export/bootstrap-table-export.js" charset="UTF-8"></script>
<script type="text/javascript" src="${basePath }/static/bootstrap-table/extensions/export/tableExport.js" charset="UTF-8"></script>
<script type="text/javascript" src="${basePath }/static/bootstrap-table/extensions/toolbar/bootstrap-table-toolbar.js" charset="UTF-8"></script>
<script type="text/javascript" src="${basePath }/static/blockui/jquery.blockUI.min.js"></script>

<link rel="stylesheet" href="${basePath }/static/jquery/jquery.searchableSelect.css" />
<script type="text/javascript" src="${basePath }/static/jquery/jquery.searchableSelect.js"></script>

<!-- x-editable 相关 -->
<link rel="stylesheet" href="${basePath}/static/x-editable/bootstrap-editable.css" />
<script type="text/javascript" src="${basePath}/static/x-editable/bootstrap-editable.js"></script>

<script type="text/javascript" src="${basePath }/js/setup.js"></script>

<style type="text/css">
.nav, a {
	color: #00f;
}

body, input {
	font-size: 12px;
	margin: 0;
}
</style>
</head>
<body>

	<jsp:include page="toolbar.jsp"></jsp:include>

	<hr style="size: 0px;">

	<div class="row">

		<div class="col-xs-12">系统设置</div>
		
			<table id="setup" class="table table-striped table-hover"></table>
	</div>
</body>
</html>