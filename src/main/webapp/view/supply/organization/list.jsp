<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>组织管理展示列表页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<script type="text/javascript" src="<%=path%>/static/js/plugins/ztree/jquery.ztree.core-3.5.js"></script>
		<link href="<%=path%>/static/css/plugins/ztree/zTreeStyle/zTreeStyle.css" rel="stylesheet">
	</head>

	<script language="javaScript">
		$(function () {
			var org;
			var setting = {
				data: {
					simpleData: {
						enable: true
					}
				},
				view: {
					fontCss: getFontCss
				}
			};
			//异步请求后台，后台返回的数据交给zTree
			$.post(root+'org/queryAllOrg.do',function (zNodes) {
					org=$.fn.zTree.init($("#org"), setting, zNodes);
			},'json')

			$("#queryByOrgName").click(function(){
				var orgName =$("#orgName").val();
                var node=org.getNodeByParam("name",orgName,"")
			    node.highlight=true;
                org.updateNode(node);
                org.selectNode(node);
			});
			//删除
			$("#deleteOrg").click(function() {
				var nodes = org.getSelectedNodes();
				if (nodes.length !=1){
					alert("请选择一条数据进行删除！");
					return false;
				}
                var id="";
				for (var i=0;i<nodes.length;i++){
					id = nodes[i].id;
				}
                $("#oriId").val(id);
				var url= root+$(this).attr('name');
				swal({
					title: "确定要删除吗?",
					text: "删除后将无法恢复当前记录!",
					type: "warning",
					showCancelButton: true,
					confirmButtonColor: "#DD6B55",
					confirmButtonText: "是的, 不后悔!",
					cancelButtonText: "算了, 再想想!",
					closeOnConfirm: false,
					closeOnCancel: false
				}, function(isConfirm){
					if (isConfirm) {
						swal("成功!", "删除成功,再也找不回来了.", "success");
						$("#searchForm").attr('action', url).submit();
					} else {
						swal("取消", "吓死了,幸亏没删了!", "error");
					}
				});
			});

			// 修改
			$("#updateOrg").click(function () {
				var nodes=org.getSelectedNodes();
				if (nodes.length!=1){
					alert("请选择一条数据进行修改");
					return false;
				}

				var id="";
				for(var i=0;i<nodes.length;i++){
					id= nodes[i].id;

				}

				$("#oriId").val(id);
				var url= root + $(this).attr('name');

				swal({
					title: "确定要修改吗?",
					text: "修改后将无法恢复当前记录!",
					type: "warning",
					showCancelButton: true,
					confirmButtonColor: "#DD6B55",
					confirmButtonText: "是的, 不后悔!",
					cancelButtonText: "算了, 再想想!",
					closeOnConfirm: false,
					closeOnCancel: false
				}, function(isConfirm){
					if (isConfirm) {
						swal("收到!", "请稍等", "success");
						$("#searchForm").attr('action', url).submit();
					} else {
						swal("取消", "吓死了,幸亏没改了!", "error");
					}
				});
			});

		})

		function getFontCss(treeId, treeNode) {
			return (!!treeNode.highlight) ? {color:"#A60000", "font-weight":"bold"} : {color:"#333", "font-weight":"normal"};
		}

	</script>

	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
					<input type="hidden" name="oriId" id ="oriId" value="${OrgEntity.oriId}"/>
				<div class="col-sm-12">
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">组织详细信息</div>


					<div class="col-sm-8">
	                	<div class="btn-group hidden-xs" role="group">
                            <button type="button" class="btn btn-success" data-toggle="modal" id="queryByOrgName" name="">
                                <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>查询
                            </button>

                			<button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="supply/organization/create.jsp">
	                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加
	                        </button>

							<button type="button" class="btn btn-primary" data-toggle="modal" id="updateOrg" name="org/view.do">
								<i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
							</button>

	                        <button type="button" class="btn btn-danger" data-toggle="modal" id="deleteOrg" name="org/delete.do">
	                            <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
	                        </button>
						</div>


					<div class="col-sm-4">
	                	<input class="form-control" id="orgName" name="testName" value="" type="text" placeholder=""/>

					</div>
						<!-- ------------要展示的元素------------ -->
		                 <table class="table table-striped table-bordered table-hover table-condensed">
							 <ul id="org" class="ztree"></ul>
					    </table>
				    </div>
			     </div>
			     </form>
			</div>
		</div>
	</body>
</html>