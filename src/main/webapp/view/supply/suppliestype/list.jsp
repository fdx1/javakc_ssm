<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>物资类别列表页面</title>
	<%@ include file="/common/jsp/header.jsp"%>
	<link href="<%=path%>/static/css/plugins/ztree/zTreeStyle/zTreeStyle.css" rel="stylesheet">
	<script type="text/javascript" src="<%=path%>/static/js/plugins/ztree/jquery.ztree.core-3.5.js"></script>
</head>

<script language="JavaScript">
	$(function () {
	    var tree;
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

		$.post(root+'type/queryAllType.do',function(zNodes) {
			tree =$.fn.zTree.init($("#type"),setting,zNodes);
		},'json')

        $("#queryByTypeName").click(function () {

            var typeName= $("#typeName").val();
            var node=tree.getNodeByParam("name",typeName,"")
            node.highlight=true;
            tree.updateNode(node);
            tree.selectNode(node);
        });
        //    ##删除
            $("#deleteType").click(function () {
                var nodes=tree.getSelectedNodes();
                if (nodes.length!=1){
                    alert("请选择一条数据进行删除");
                    return false;
                }

                var id="";
                for(var i=0;i<nodes.length;i++){
                    id= nodes[i].id;
                }

                $("#typeId").val(id);
               var url= root + $(this).attr('name');
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
        //    ##修改
        $("#updateType").click(function () {
            var nodes=tree.getSelectedNodes();
            if (nodes.length!=1){
                alert("请选择一条数据进行修改");
                return false;
            }

            var id="";
            for(var i=0;i<nodes.length;i++){
                id= nodes[i].id;
            }

            $("#typeId").val(id);
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
            <input type="hidden" name="typeId" id="typeId" value="${typeEntity.typeId}"/>
			<div class="col-sm-12">
				<!-- ------------按钮组 start------------ -->
				<div class="alert alert-success" role="alert">物资类别详细信息</div>
				<div class="col-sm-8">
					<div class="btn-group hidden-xs" role="group">
						<button type="button" class="btn btn-success" data-toggle="modal" id="queryByTypeName" name="type/view.do">
							<i class="glyphicon glyphicon-search" aria-hidden="true"></i>查询
						</button>
						<button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="supply/suppliestype/create.jsp">
							<i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加
						</button>
						<button type="button" class="btn btn-success" data-toggle="modal" id="updateType" name="type/view.do">
							<i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
						</button>
						<button type="button" class="btn btn-danger" data-toggle="modal" id="deleteType" name="type/delete.do">
							<i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
						</button>

				</div>
				<div class="col-sm-4">
					<input class="form-control" id="typeName" name="typeName" value="" type="text"/>
                </div>
                    <!-- ------------按钮组 end------------ -->
				<table class="table table-striped table-bordered table-hover table-condensed">
					<ul id="type" class="ztree"></ul>
				</table>

			</div>
			</div>
		</form>
	</div>
</div>
</body>
</html>