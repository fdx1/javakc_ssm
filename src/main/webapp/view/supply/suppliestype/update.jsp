<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>物资类别修改页面</title>
		<%@ include file="/common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
		<link href="<%=path%>/static/css/plugins/ztree/zTreeStyle/zTreeStyle.css" rel="stylesheet">
		<script type="text/javascript" src="<%=path%>/static/js/plugins/ztree/jquery.ztree.core-3.5.js"></script>
	</head>
	<script language="JavaScript">

		$(function () {

			var setting = {
				view: {
					dblClickExpand: false
				},
				data: {
					simpleData: {
						enable: true
					}
				},
				callback: {
					beforeClick: beforeClick,
					onClick: onClick
				}
			};

			$.post(root+'type/queryAllType.do',function(zNodes) {
				$.fn.zTree.init($("#type"),setting,zNodes);
			},'json')

		})
		function beforeClick(treeId, treeNode) {
		}

		function onClick(e, treeId, treeNode) {
			var zTree = $.fn.zTree.getZTreeObj("type"),
					node = zTree.getSelectedNodes(),
					v = "";
			        id ="";
			node.sort(function compare(a,b){return a.id-b.id;});
			for (var i=0, l=node.length; i<l; i++) {
				v += node[i].name + ",";
				id += node[i].id + ",";
			}
			if (v.length > 0 ) v = v.substring(0, v.length-1);
			if (id.length > 0 ) id = id.substring(0, id.length-1);
			var nodeName = $("#nodeName");
            nodeName.attr("value", v);
            $("#typePid").val(id);
		}

		function showMenu() {
			var cityObj = $("#nodeName");
			var cityOffset = $("#nodeName").offset();
			$("#menuContent").css({left:cityOffset.left + "px", top:cityOffset.top + cityObj.outerHeight() + "px"}).slideDown("fast");

			$("body").bind("mousedown", onBodyDown);
		}
		function hideMenu() {
			$("#menuContent").fadeOut("fast");
			$("body").unbind("mousedown", onBodyDown);
		}
		function onBodyDown(event) {
			if (!(event.target.id == "menuBtn" || event.target.id == "menuContent" || $(event.target).parents("#menuContent").length>0)) {
				hideMenu();
			}
		}

	</script>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/type/update.do" method="post" class="form-horizontal" role="form">
                   <input type="hidden" id="typeId" name="typeId" value="${typeEntity.typeId}"/>
                   <input type="hidden" id="typePid" name="typePid" value="${typeEntity.typePid}"/>

                    <fieldset>
                        <legend>物资修改基本信息</legend>
						<div class="form-group">
							<a id="menuBtn"  href="#" onclick="showMenu(); return false;" class="col-sm-2 control-label">选择</a>
							<div class="col-sm-2">
								<input class="form-control" type="text" id="nodeName" name="nodeName" value="${typeEntity.typeName}"/>
								<div id="menuContent" class="menuContent" style="display: none;">
									<ul id="type" class="ztree" style="margin-top: 0; width: 160px;"></ul>
								</div>
							</div>
						</div>
                       <div class="form-group">
                          <label class="col-sm-2 control-label">分类名称</label>
                          <div class="col-sm-2">
                             <input class="form-control" type="text" name="typeName" value="${typeEntity.typeName}"/>
                          </div>
                       </div>

						<div class="form-group">
							<label class="col-sm-2 control-label">分类简称</label>
							<div class="col-sm-2">
								<input class="form-control" type="text" name="typeShort" value="${typeEntity.typeShort}"/>
							</div>
						</div>

                       <div class="form-group">
                          <label class="col-sm-2 control-label">展开节点</label>
                          <div class="col-sm-2">

									  <input type="radio" name="typeOpen"  value="1" checked/>展开
									  <input type="radio" name="typeOpen" value="2"/>关闭
                          </div>
                       </div>

						<div class="form-group">
							<label class="col-sm-2 control-label">节点顺序</label>
							<div class="col-sm-2">
								<input class="form-control" type="text" name="typeOrder" value="${typeEntity.typeOrder}"/>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">节点等级</label>
							<div class="col-sm-2">
								<input class="form-control" type="text" name="typeLevel" value="${typeEntity.typeLevel}"/>
							</div>
						</div>

                    </fieldset>     
                    <fieldset>
                        <div class="form-group">
                        	<label class="col-sm-2 control-label"></label>
                           	<div class="col-sm-4">
                              	<input type="submit" value="提交" class="btn btn-primary"/>
								<input type="reset" value="重置" class="btn btn-danger" id="resetForm"/>
							</div>
                        </div>
                    </fieldset>
                </form>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="${path }/static/js/plugins/file-input/fileinput.min.js"></script>
</html>