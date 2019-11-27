<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>物资展示列表页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
				<div class="col-sm-12">
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">物资详细信息</div>
	                <div class="col-sm-4">
	                	<input class="form-control" id="search" name="goodsName" value="${suppliesEntity.goodsName }" type="text" placeholder="查询名称 回车搜索"/>
<%--	                	<input class="form-control" id="search" name="goodsJiancheng" value="${suppliesEntity.goodsJiancheng }" type="text" placeholder="查询简称 回车搜索"/>--%>
	                </div>
	                 <!-- ------------按钮组 end------------ -->
						<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
						<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		                 <table class="table table-striped table-bordered table-hover table-condensed">
					        <thead>
					            <tr>
					                <th><input type="checkbox" id="checkall"/></th>
					                <th>物资编码</th>
					                <th>物资名称</th>
					                <th>物资简称</th>
					                <th>规格</th>
					                <th>物资分类</th>
					                <th>基本单位</th>
					                <th>状态</th>
									<th>创建时间</th>
									<th>创建人</th>
					                <th>操作</th>
					            </tr>
					        </thead>
					        <tbody>
					        	<c:set var="vs"></c:set>
					        	<c:forEach var="e" items="${list }" varStatus="v">
						            <tr>
										<td><input type="checkbox" name="ids" value="${e.goodsId }" value1="${e.goodsName}"/></td>
										<td>${e.goodsId }</td>
										<td>${e.goodsName}</td>
										<td>${e.goodsJiancheng }</td>
										<td>${e.goodsGuige }</td>
										<td>${e.goodsWuzizu} </td>
										<td>${e.goodsBasicu }</td>
										<td>${e.goodsState==1? '启用':'停用' }</td>
										<td><fmt:formatDate value="${e.updateDate}" pattern="yyyy-MM-dd"></fmt:formatDate></td>
										<td>${e.createUser }</td>
						            </tr>
					            </c:forEach>
					        </tbody>
					    </table>
                    <div class="form-group">
                        <label class="col-sm-5 control-label"></label>
                        <div class="col-sm-7">
                            <input type="submit" value="确定" class="btn btn-primary" id="ascertain"/>
                        </div>
                    </div>
			     </div>
			     </form>
			</div>
		</div>
        <script type="text/javascript">
            $(function()
            {
                var index = parent.layer.getFrameIndex(window.name);

                $('#ascertain').click(function() {
					var count = $('[name=ids]:checked').length;
					if (count == 0) {
						alert("怎么着, 不选是不?");
						return;
					} else {

						var id = $('[name=ids]:checked').val();
						var name = $('[name=ids]:checked').attr('value1');

						parent.$('#goods').val(name);
						parent.$('#good').val(id);
						parent.layer.close(index);
					}

                });

            });
        </script>
	</body>
</html>