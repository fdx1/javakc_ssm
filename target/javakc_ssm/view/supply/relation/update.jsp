<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>测试添加页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/relation/update.do" method="post" class="form-horizontal" role="form">
                    <input type="hidden" name="ssId" id="ssId" value="${relationEntity.ssId}">
                    <fieldset>
                        <legend>物资供应商关系编辑</legend>
								<div class="input-group">
                                    <label class="col-sm-1 control-label">组织</label>
                                    <div class="col-sm-3">
									<input type="text" class="form-control" value="${relationEntity.oriId}" name="oriId">
									<span class="input-group-btn">
                                  <button class="btn btn-default glyphicon glyphicon-zoom-in" type="button"></button>
                                </span>
                                    </div>
                                    <label class="col-sm-1 control-label">供应商</label>
                                    <div class="col-sm-3">
                                        <input type="text" class="form-control" value="${relationEntity.supplierId}" name="supplierId">
                                        <span class="input-group-btn">
                                  <button class="btn btn-default glyphicon glyphicon-zoom-in" type="button"></button>
                                </span>
                                    </div>
                                    <label class="col-sm-1 control-label">物资</label>
                                    <div class="col-sm-3">
                                        <input type="text" class="form-control" value="${relationEntity.goodsId}" name="goodsId">
                                        <span class="input-group-btn">
                                  <button class="btn btn-default glyphicon glyphicon-zoom-in" type="button"></button>
                                </span>
                                    </div>
								</div>
								<div class="input-group">
                                    <label class="col-sm-2 control-label">税率</label>
                                    <div class="col-sm-3">
									<input type="text" class="form-control" value="${relationEntity.rate}" name="rate">
                                    </div>
                                    <label class="col-sm-2 control-label">收货组织</label>
                                    <div class="col-sm-3">
                                        <input type="text" class="form-control" name="oriName" value="${relationEntity.oriName}">
                                        <span class="input-group-btn">
                                    <button class="btn btn-default glyphicon glyphicon-zoom-in" type="button"></button>
                                        </span>
                                    </div>
								</div>
                    </fieldset>
                    <fieldset>
                        <div class="form-group">
                        	<label class="col-sm-5 control-label"></label>
                           	<div class="col-sm-7">
                              	<input type="submit" value="保存" class="btn btn-primary"/>
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