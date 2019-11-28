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
				id = nodes[i].name;

			}

			$("#oriId").val(id);
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
			<input type="hidden2" name="oriId" id ="oriId" value=""/>
            <div class="col-sm-12">
                <div class="col-sm-8">
                    <i>&nbsp;</i>
                </div>
            </div>
			<div class="col-sm-12">

				<!-- ------------按钮组 start------------ -->
				<div class="alert alert-success" role="alert">组织详细信息</div>
                <div class="col-sm-8">
					<!-- ------------要展示的元素------------ -->
					<table class="table table-striped table-bordered table-hover table-condensed">
						<ul id="org" class="ztree"></ul>
					</table>
                    <div class="btn-group hidden-xs" role="group">
                        <button type="button" class="btn btn-success" data-toggle="modal" id="deleteOrg">
                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>确定
                        </button>
                    </div>
				</div>
			</div>
		</form>
	</div>
</div>
</body>
</html>