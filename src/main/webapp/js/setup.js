//载入页面后执行
$(function() {
	initTable();
})

// 初始化表格
function initTable() {
	$('#setup')
			.bootstrapTable(
					{
						method : 'post',
//						url : '/getList',
						cache : false,
						contentType : 'application/x-www-form-urlencoded',
						// height : tableHeight,
						striped : true,
						pagination : true,
						pageSize : 10,
						pageNumber : 1,
						pageList : [ 10, 20, 50 ],
						search : true,
						showColumns : true,
						showRefresh : true,
						showColumns : false,
						minimumCountColumns : 1,
						toolbar : '#toolbar',
						clickToSelect : true,
						sidePagination : 'server',
						queryParamsType : 'limit',
						queryParams : function(params) {
							// params.search = 'hello';
							// params.name = 'zht';
							// console.log(params);
							return params;
						},
						showExport : true,
						// onDblClickRow : function(row, $element) {
						// edit(row.id);
						// },
						columns : [
								{
									field : 'id',
									visible : false
								},
								{
									field : 'name',
									title : '设置项',
									align : 'left',
									valign : 'middle',
									align : 'center',
									width : 200
								},
								{
									field : 'value',
									title : '参数',
									align : 'left',
									valign : 'middle',
									align : 'center',
									width : 200
								} ],
						data: [
							{"name":"系统开启状态", "value":"开启"},
							{"name":"禁止添加新书籍","value":"禁用"}
						]
					})
}
