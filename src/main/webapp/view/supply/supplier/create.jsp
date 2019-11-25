<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>供应商添加页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/supplier/save.do" method="post" class="form-horizontal" role="form">
                    <fieldset>
                        <legend>供应商基本信息</legend>
                       <div class="form-group">
                          <label class="col-sm-1 control-label">供应商类型</label>
                          <div class="col-sm-3 dropdown">
                              <zhg:select codeTp="type01" name="supplierType01" cls="form-control" def="true"></zhg:select>
                          </div>
                          <label class="col-sm-1 control-label">供应商内部组织</label>
						   <div class="col-sm-3">
							   <input class="form-control" type="text" name="oriName" />
						   </div>
                       </div>
                       <div class="form-group">
                          <label class="col-sm-1 control-label">供应商名称</label>
                          <div class="col-sm-3">
                             <input class="form-control" type="text"  name="supplierName"/>
                          </div>
						   <label class="col-sm-1 control-label">供应商分类</label>
						   <div class="col-sm-3">
                               <zhg:select codeTp="type02" name="supplierType02" cls="form-control" def="true"></zhg:select>
						   </div>
                       </div>
						<div class="form-group">
							<label class="col-sm-1 control-label">供应商简称</label>
							<div class="col-sm-3">
								<input class="form-control" type="text"  name="supplierJname"/>
							</div>
							<label class="col-sm-1 control-label">法人</label>
							<div class="col-sm-3">
								<input class="form-control" type="text"  name="supplierFr"/>
							</div>
							<label class="col-sm-1 control-label">法人电话</label>
							<div class="col-sm-3">
								<input class="form-control" type="text"  name="supplierFrphone"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label">供应商地址</label>
							<div class="col-sm-3">
								<input class="form-control" type="text"  name="supplierAddress"/>
							</div>
							<label class="col-sm-1 control-label">社会统一信任代码</label>
							<div class="col-sm-3">
								<input class="form-control" type="text"  name="supplierCode"/>
							</div>
						</div>
						<div class="form-group">
						<label class="col-sm-1 control-label">联系人</label>
						<div class="col-sm-3">
							<input class="form-control" type="text"  name="supplierLxr"/>
						</div>
						<label class="col-sm-1 control-label">联系电话</label>
						<div class="col-sm-3">
							<input class="form-control" type="text"  name="supplierLphone"/>
						</div>
						<label class="col-sm-1 control-label">联系人邮箱</label>
						<div class="col-sm-3">
							<input class="form-control" type="text"  name="supplierMail"/>
						</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label">是否启用门户</label>
							<div class="col-sm-3">
								<input class="form-control btn-sm" type="checkbox"  name="supplierMh" value="1"/>
							</div>
							<label class="col-sm-1 control-label">是否必须合同</label>
							<div class="col-sm-3">
								<input class="form-control btn-sm" type="checkbox"  name="supplierHt"  value="1"/>
							</div>

						</div>
                    </fieldset>     
                    <fieldset>
                        <div class="form-group">
                        	<label class="col-sm-2 control-label"></label>
                           	<div class="col-sm-4">
                              	<input type="submit" value="提交" class="btn btn-primary"/>
                           	</div>
                           	<label class="col-sm-2 control-label" ></label>
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