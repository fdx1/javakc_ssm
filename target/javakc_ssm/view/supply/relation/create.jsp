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
				<form action="${path }/relation/save.do" method="post" class="form-horizontal" role="form">
                    <fieldset>
                        <legend>物资供应商关系新增</legend>
						<div class="row">
							<div class="col-sm-4">
								<div class="input-group">
									<input type="text" class="form-control" placeholder="组织..." name="oriId">
									<span class="input-group-btn">
                                  <button class="btn btn-default glyphicon glyphicon-zoom-in" type="button" id="oriId"></button>
                                </span> 
								</div>
							</div>
							<div class="col-sm-4">
								<div class="input-group">
									<input class="form-control" id="menupidValue" name="ids" type="hidden"/>
									<input type="text" class="form-control" placeholder="供应商..." name="supplierId" id="supplierIds">
									<span class="input-group-btn">
                                  <button class="btn btn-default glyphicon glyphicon-zoom-in" type="button" id="supplierId"></button>
                                </span>
								</div>
							</div>
							<div class="col-sm-4">
								<div class="input-group">
									<input type="text" class="form-control" placeholder="物资..." name="goodsId">
									<span class="input-group-btn">
                                  <button class="btn btn-default glyphicon glyphicon-zoom-in" type="button"></button>
                                </span>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-4">
								<div class="input-group">
									<input type="text" class="form-control" placeholder="税率..." name="rate">

								</div>
							</div>
							<div class="col-sm-4">
								<div class="input-group">
									<input type="text" class="form-control" placeholder="收货组织..." name="oriName">
									<span class="input-group-btn">
                                  <button class="btn btn-default glyphicon glyphicon-zoom-in" type="button"></button>
                                </span>
								</div>
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

	<script type="text/javascript" src="${ path}/view/supply/relation/js/relation-create.js"></script>
</html>