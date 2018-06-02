<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<meta charset=utf-8 />
<title>我的系统</title>
<!-- jquery 相关 -->
<script src="${basePath }/static/jquery/jquery.js"></script>

<!-- bootstrap 相关 -->
<script src="${basePath }/static/bootstrap/js/bootstrap.min.js"></script>

<!-- bootstrap-table 相关 -->
<link href="${basePath }/static/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${basePath }/static/bootstrap-table/bootstrap-table.css"
	rel="stylesheet">

<script type="text/javascript"
	src="${basePath }/static/bootstrap-table/bootstrap-table.js"
	charset="UTF-8"></script>
<script type="text/javascript"
	src="${basePath }/static/bootstrap-table/locale/bootstrap-table-zh-CN.js"
	charset="UTF-8"></script>
<script type="text/javascript"
	src="${basePath }/static/bootstrap-table/extensions/export/bootstrap-table-export.js"
	charset="UTF-8"></script>
<script type="text/javascript"
	src="${basePath }/static/bootstrap-table/extensions/export/tableExport.js"
	charset="UTF-8"></script>
<script type="text/javascript"
	src="${basePath }/static/bootstrap-table/extensions/toolbar/bootstrap-table-toolbar.js"
	charset="UTF-8"></script>
<script type="text/javascript"
	src="${basePath }/static/blockui/jquery.blockUI.min.js"></script>

<link rel="stylesheet"
	href="${basePath }/static/jquery/jquery.searchableSelect.css" />
<script type="text/javascript"
	src="${basePath }/static/jquery/jquery.searchableSelect.js"></script>

<style type="text/css">
.nav, a {
	color: #00f;
}

body, input {
	font-size: 12px;
	margin: 0;
}
</style>
<body>

	<jsp:include page="toolbar.jsp"></jsp:include>

	<hr style="size: 0px;">
	<div class="container" style="border: 0px dotted #CCC">
		<form method="post" action="/save">
			<div class="form-group">
				<label for="name">名称：</label> <input id="name" type="text"
					name="name" style="font-size: 12px; width: 200px;" />
			</div>
			<div class="form-group">
				<label for="author"> 作者：</label> <input id="author" type="text"
					name="author" style="font-size: 12px; width: 100px;" />
			</div>
			<div class="form-group">
				<label for="type"> 类别：</label> <input id="type" type="text"
					name="type" style="font-size: 12px; width: 200px;" />
			</div>
			<div class="form-group">
				<label for="type"> 价格：</label> <input id="type" type="text"
					name="price" style="font-size: 12px; width: 100px;" />
			</div>
			<div class="form-group">
				<label for="description"> 描述：</label>
				<textarea id="description"
					style="vertical-align: top; width: 300px; height: 200px;"
					name="description"></textarea>
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-default">提交</button>
			</div>
		</form>
	</div>
	<hr>
</body>
</html>
