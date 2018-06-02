<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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


<style type="text/css">
.nav, a {
	color: #00f;
}

body, input {
	font-size: 12px;
	margin: 0;
}

#wrapper {
	overflow: hidden;
}

#content {
	width: 486px;
	margin-right: 10px;
	float: left;
	min-height: 1200px;
}

#sidebar {
	font-size: 12px;
	color: #666;
	border: solid 1px #ddd;
	width: 280px;
	background: #fff;
	padding: 10px;
	float: right;
	height: 400px;
}

#portamento_container {
	float: right;
	position: relative;
}

#portamento_container #sidebar {
	float: none;
	position: absolute;
}

#portamento_container #sidebar.fixed {
	position: fixed;
}
</style>
</head>
<body>
	<!-- portamento 相关 -->
	<script src="${basePath }/static/portamento/portamento.js"></script>

	<script>
		$(function() {

			var flag = false;

			$("#show").click(function() {
				if (flag) {
					$("#sidebar").show();
					flag = false;
				} else {
					$("#sidebar").hide();
					flag = true;
				}
			});

			$('#sidebar').portamento({
				disableWorkaround : false
			});
		});
	</script>

	<div id="sidebar">
		<span class="glyphicon glyphicon-paperclip" style="color: rgb(0, 0, 0);"></span> 以下书籍已选中：
	</div>

	<jsp:include page="toolbar.jsp"></jsp:include>


	<button id="show">show</button>















	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br>

	<br> 000000000000000000000000
</body>
</html>