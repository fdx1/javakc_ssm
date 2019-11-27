<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>测试添加页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/supplier/update.do" method="post" class="form-horizontal" role="form">
					<input type="hidden" name="supplierID" id="supplierID" value="${supplierEntity.supplierID}">
					<fieldset>
						<legend>供应商基本信息</legend>
						<div class="form-group">
							<label class="col-sm-1 control-label">供应商类型</label>
							<div class="col-sm-3 dropdown">
								<zhg:select codeTp="type01" name="supplierType01" cls="form-control" def="true" value="${supplierEntity.supplierType01}"></zhg:select>
							</div>
							<label class="col-sm-1 control-label">供应商内部组织</label>
							<div class="col-sm-3" >
								<input class="form-control" type="text"   name="oriName" value="${supplierEntity.oriName}"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label">供应商名称</label>
							<div class="col-sm-3">
								<input class="form-control" type="text"  name="supplierName" value="${supplierEntity.supplierName}"/>
							</div>
							<label class="col-sm-1 control-label">供应商分类</label>
							<div class="col-sm-3">
								<zhg:select codeTp="type02" name="supplierType02" cls="form-control" def="true" value="${supplierEntity.supplierType02}"></zhg:select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label">供应商简称</label>
							<div class="col-sm-3">
								<input class="form-control" type="text"  name="supplierJname" value="${supplierEntity.supplierJname}"/>
							</div>
							<label class="col-sm-1 control-label">法人</label>
							<div class="col-sm-3">
								<input class="form-control" type="text"  name="supplierFr" value="${supplierEntity.supplierFr}"/>
							</div>
							<label class="col-sm-1 control-label">法人电话</label>
							<div class="col-sm-3">
								<input class="form-control" type="text"  name="supplierFrphone" value="${supplierEntity.supplierFrphone}"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label">供应商地址</label>
							<div class="col-sm-3">
								<input class="form-control" type="text"  name="supplierAddress" value="${supplierEntity.supplierAddress}"/>
							</div>
							<label class="col-sm-1 control-label">社会统一信任代码</label>
							<div class="col-sm-3">
								<input class="form-control" type="text"  name="supplierCode" value="${supplierEntity.supplierCode}"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label">联系人</label>
							<div class="col-sm-3">
								<input class="form-control" type="text"  name="supplierLxr" value="${supplierEntity.supplierLxr}"/>
							</div>
							<label class="col-sm-1 control-label">联系电话</label>
							<div class="col-sm-3">
								<input class="form-control" type="text"  name="supplierLphone" value="${supplierEntity.supplierLphone}"/>
							</div>
							<label class="col-sm-1 control-label">联系人邮箱</label>
							<div class="col-sm-3">
								<input class="form-control" type="text"  name="supplierMail" value="${supplierEntity.supplierMail}"/>
							</div>
						</div>
						<div>
							<label class="col-sm-1 ">是否必须合同</label>
							<div class="col-sm-3">
								<c:choose>
									<c:when test="${supplierEntity.supplierHt==1}">
										<input class="btn-sm" type="radio"  name="supplierHt" checked value="1"/>是
										<input class="btn-sm" type="radio"  name="supplierHt"  value=""/>否
									</c:when>
									<c:when test="${supplierEntity.supplierHt==null}">
										<input class="btn-sm" type="radio"  name="supplierHt" checked value="1"/>是
										<input class=btn-sm" type="radio"  name="supplierHt"  value=""/>否
									</c:when>
								</c:choose>
							</div>
							<label class="col-sm-1">是否启用门户</label>
							<div class="col-sm-3">
								<c:choose>
									<c:when test="${supplierEntity.supplierMh==1}">
										<input class=" btn-sm" type="radio"  name="supplierMh" checked value="1"/>是
										<input class=" btn-sm" type="radio"  name="supplierMh"  value=""/>否
									</c:when>
									<c:when test="${supplierEntity.supplierMh==null}">
										<input class=" btn-sm" type="radio"  name="supplierMh" checked value="1"/>是
										<input class=" btn-sm" type="radio"  name="supplierMh"  value=""/>否
									</c:when>
								</c:choose>
							</div>
						</div>
					</fieldset>
					<fieldset>
                        <div class="form-group">
                        	<label class="col-sm-2 control-label"></label>
                           	<div class="col-sm-4">
                              	<input type="submit" value="提交" class="btn btn-primary"/>
                           	</div>
                           	<label class="col-sm-2 control-label"></label>
                           	<div class="col-sm-4">
                              	<input type="reset" value="重置" class="btn btn-danger" id="resetForm"/>
                           	</div>
                        </div>
                    </fieldset>
                </form>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="${path }/static/js/plugins/file-input/fileinput.min.js"></script>
	<script type="text/javascript" src="./js/dictionary.js"></script>
</html>