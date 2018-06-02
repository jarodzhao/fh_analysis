//页面初始化
$(function() {

	// sidebar 载入
	$('#sidebar').portamento({
		disableWorkaround : false
	});
	show();
	initTable();
})

// 借出面板显示标识
var flag = true;

// angularJs 前缀
var ngAttrPrefixes = [ 'ng-', 'data-ng-', 'ng:', 'x-ng-' ];

// ngApp 定义
var app = angular.module("borrow", []);

// controller 定义
app.controller('add', function($scope) {

	// 归还书籍方法
	$scope.huan = function() {
		var index = $("#report0").bootstrapTable("getSelections");
		if (index.length > 0)
			alert(index[0].description);
	}

	// 借出书籍方法
	$scope.jie = function() {

		// 已选中的图书列表
		var bookList = [];

		var index = $("#report0").bootstrapTable("getSelections");

		if (index.length > 0) {

			for (var i = 0; i < index.length; i++) {
				
				if (bookList.indexOf(index[i].name) < 0)
					bookList.push(index[i].name);
			}
		}

		$scope.list = bookList;
	}
});

// 按类别获取书籍列表
function getType(param) {
	console.info(param);
	if (!param) {
		url: '/getType', $("#report0").bootstrapTable("refresh");
	} else {
		$("#report0").bootstrapTable("refresh", {
			url : '/getType',
			query : {
				'type' : param
			}
		});
	}
}

// 无参数刷新表格(相当于刷新页面)
function refreshTable() {
	$("#report0").bootstrapTable("refresh");
}

function deleteIds(ids) {
	var row = $.map($("#report0").bootstrapTable("getSelections"), function() {
		console.info(row);
	});
}

// 删除操作
function deleteMethod(id) {
	if (id) {
		$.ajax({
			type : 'post',
			url : "/deleteBook?id=" + id,
			success : function(result) {
				if ("success" == result.status) {
					refreshTable();
				}
			}
		})
	}
}

// 初始化表格
function initTable() {
	$('#report0')
			.bootstrapTable(
					{
						method : 'post',
						url : '/getList',
						cache : false,
						contentType : 'application/x-www-form-urlencoded',
						// height : tableHeight,
						striped : true,
						pagination : true,
						pageSize : 5,
						pageNumber : 1,
						pageList : [ 5, 10, 20, 50 ],
						search : true,
						showColumns : true,
						showRefresh : true,
						showColumns : true,
						minimumCountColumns : 1,
						toolbar : '#toolbar',
						clickToSelect : true,
						onClickRow: function(row, tr){
							alert(row.name);
						},
						sidePagination : 'server',
						queryParamsType : 'limit',
						queryParams : function(params) {
							return params;
						},
						showExport : true,
						columns : [
								{
									width : 100,
									checkbox : true
								},
								{
									field : 'id',
									visible : false
								},
								{
									field : 'name',
									title : '名称',
									align : 'left',
									valign : 'middle',
									align : 'center',
									width : 100,
									sortable : true
								},
								{
									field : 'author',
									title : '作者',
									align : 'left',
									valign : 'middle',
									align : 'center',
									width : 100,
									sortable : true
								},
								{
									field : 'type',
									title : '类别',
									align : 'left',
									valign : 'middle',
									align : 'center',
									width : 50,
									sortable : true
								},
								{
									field : 'description',
									title : '描述',
									width : 350,
									align : 'left',
									valign : 'middle',
									sortable : true
								},
								{
									field : 'price',
									title : '价格',
									align : 'center',
									valign : 'middle',
									width : 50,
									sortable : true
								},
								{
									field : 'statName',
									title : '状态',
									align : 'center',
									valign : 'middle',
									width : 50,
									sortable : true
								},
								{
									field : 'operator',
									visible : false,
									title : '操作',
									align : 'center',
									width : 100,
									clickToSelect : false,
									formatter : function(value, row, index) {
										var delIcon = "<a class='del' href='javascript:void("
												+ row.id
												+ ")' title='删除'><span class='glyphicon glyphicon-remove' style='color: rgb(255, 140, 60);'></span></>";
										var editIcon = "<a class='del' href='javascript:void("
												+ row.id
												+ ")' title='编辑'><span class='glyphicon glyphicon-pencil' style='color: rgb(255, 140, 60);'></span></>";
										return editIcon + "　　" + delIcon;
									},
									events : {
										'click .del' : function(e, value, row,
												index) {
											deleteMethod(row.id);
										}
									}
								} ]
					})
}

// 显示借出面板方法
function show() {
	if (flag) {
		$("#sidebar").show();
		flag = false;
	} else {
		$("#sidebar").hide();
		flag = true;
	}
}
