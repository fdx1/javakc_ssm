<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>关系展示列表页面</title>
    <%@ include file="../../../common/jsp/header.jsp"%>
</head>
<body>
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="ibox float-e-margins">
        <form id="searchForm" action="">
            <div class="col-sm-12">
                <!-- ------------按钮组 start------------ -->
                <div class="col-sm-4">
                    <span>供应商</span>
                    <input class="form-control" id="search" name="supplierId" value="${relationEntity.supplierId }" type="text" placeholder="查询内容 回车搜索"/>
                </div>
                <div class="col-sm-4">
                    <span>物资</span>
                    <input class="form-control" id="searc" name="testName" value="${testEntity.testName }" type="text" placeholder="查询内容 回车搜索"/>
                </div>
                <div class="col-sm-4">
                    <span>组织</span>
                    <input class="form-control" id="sear" name="testName" value="${testEntity.testName }" type="text" placeholder="查询内容 回车搜索"/>
                </div>
                <div class="col-sm-4">
                        <button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="supply/relation/create.jsp">
                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>新增
                        </button>
                    </div>
                    <div class="col-sm-4">
                            <button type="button" class="btn btn-danger" data-toggle="modal" id="delete" name="relation/delete.do">
                                <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
                            </button>
                        </div>
                <div class="col-sm-4">
                    <button type="button" class="btn btn-danger" data-toggle="modal" id="update" name="relation/view.do">
                        <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>编辑
                    </button>
            </div>
                </div>

                <!-- ------------按钮组 end------------ -->
                <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
                <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
                <table class="table table-striped table-bordered table-hover table-condensed">
                    <thead>
                    <tr>
                        <th><input type="checkbox" id="checkall"/></th>
                        <th>组织</th>
                        <th>物资</th>
                        <th>供应商</th>
                        <th>收货组织</th>
                        <th>税率</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:set var="vs"></c:set>
                    <c:forEach var="e" items="${page.list }" varStatus="v">
                        <tr>
                            <td><input type="checkbox" name="ids" value="${e.ssId }"/></td>
                            <td>${e.oriId }</td>
                            <td>${e.goodsId}</td>
                            <td>${e.supplierId}</td>
                            <td>${e.oriName}</td>
                            <td>${e.rate}</td>
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