<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>供应商展示页面</title>
	<%@ include file="../../../common/jsp/header.jsp"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<div class="wrapper wrapper-content animated fadeInRight">
	<div class="ibox float-e-margins">
		<form id="searchForm" action="">
			<div class="col-sm-12">
				<!-- ------------按钮组 start------------ -->
				<div class="alert alert-success" role="alert">供应商详细信息</div>
				<div class="col-sm-6">
					<div class="btn-group hidden-xs" role="group">
						<button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="/supply/supplier/create.jsp">
							<i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加
						</button>
						<button type="button" class="btn btn-success" data-toggle="modal" id="update" name="supplier/view.do">
							<i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
						</button>
						<button type="button" class="btn btn-danger" data-toggle="modal" id="delete" name="supplier/delete.do">
							<i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
						</button>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="col-sm-2">
						<span>供应商名称：</span>
					</div>
					<div class="col-sm-4">
						<input class=" form-control" id="search" name="supplierName" value="${supplierEntity.supplierName}" type="test" placeholder="查询内容 回车搜索"/>
				    </div>
				</div>
				<!-- ------------按钮组 end------------ -->
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<table class="table table-striped table-bordered table-hover table-condensed">
					<thead>
					<tr>
						<th><input type="checkbox" id="checkall"/></th>
						<th>供应商编码</th>
						<th>供应商名称</th>
						<th>供应商类型</th>
						<th>联系人</th>
						<th>联系电话</th>
						<th>必须合同</th>
						<th>是否启用门户</th>
						<th>操作</th>
					</tr>
					</thead>
					<tbody>
					<c:set var="vs"></c:set>
					<c:forEach var="e" items="${page.list}" varStatus="v">
						<tr>
							<td><input type="checkbox" name="ids" value="${e.supplierID}"/></td>
							<td>${e.supplierID}</td>
							<td>${e.supplierName}</td>
                            <td><zhg:show  codeTp="type01" value="${e.supplierType01}" /></td>
							<td>${e.supplierLxr}</td>
							<td>${e.supplierLphone}</td>
							<c:if test="${e.supplierHt==1}"><td><div>
                                <button type="button" class=" btn btn-info glyphicon glyphicon-ok">
                                </button>
                            </div></td></c:if>
                            <c:if test="${e.supplierHt==null}"><td><div>
                                <button type="button" class=" btn btn-danger glyphicon glyphicon-remove">
                                </button>
                            </div></td></c:if>
                            <c:if test="${e.supplierMh==1}"><td><div>
                                <button type="button" class=" btn btn-info glyphicon glyphicon-ok">
                                </button>
                            </div></td></c:if>
                            <c:if test="${e.supplierMh==null}"><td><div>
                                <button type="button" class=" btn btn-danger glyphicon glyphicon-remove">
                                </button>
                            </div></td></c:if>
							<td><div>
								<button type="button" class=" btn btn-info glyphicon glyphicon-wrench btn-sm">
								</button>
							</div></td>

						</tr>
					</c:forEach>
					</tbody>
				</table>
				<div class="page">${page}</div>
			</div>
		</form>
	</div>
</div>
</body>
</html>