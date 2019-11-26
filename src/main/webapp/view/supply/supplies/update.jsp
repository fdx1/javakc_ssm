<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>物资修改页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/supplies/update.do" method="post" class="form-horizontal" role="form">
					<input type="hidden1" name="goodsId" id="goodsId" value="${suppliesEntity.goodsId}">
                    <fieldset>
                        <legend>物资基本信息</legend>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" >物资分类:</label>
                            <div id="form-control" class="menuContent" style="display: none; position:absolute " >
                                <ul id="treeDemo" class="ztree" style="margin-top: 0; width: 160px" ></ul>
                            </div>
                            <div class="col-sm-3">
                                <input class="form-control" type="text" name="typeName"  />
                                <a id="menuBtn" onclick="showRMenu(); return false;" class="glyphicon glyphicon-search"></a>
                            </div>
                            <label class="col-sm-2 control-label" >物资名称:</label>
                            <div class="col-sm-3">
                                <input class="form-control" type="text" name="goodsName" value="${suppliesEntity.goodsName}"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" >规格:</label>
                            <div class="col-sm-3">
                                <input class="form-control" type="text"  name="goodsGuige" value="${suppliesEntity.goodsGuige}"/>
                            </div>
                            <label class="col-sm-2 control-label" >物资简称:</label>
                            <div class="col-sm-3">
                                <input class="form-control" type="text" name="goodsJiancheng" value="${suppliesEntity.goodsJiancheng}" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" >物资简述:</label>
                            <div class="col-sm-8">
                                <textarea class="form-control" rows="3" name="goodsCommit" ></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" >图片信息:</label>
                            <div class="btn-group">
                                <label title="上传图片" for="inputImage" class="btn btn-primary">
                                    <input type="file" accept="image/*" name="goodsPicture" id="inputImage" class="hide">
                                    上传新图片
                                </label>
                            </div>
                        </div>
                        <legend></legend>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" >是否赋码:</label>
                            <div class="col-sm-1" >
                                <c:choose>
                                    <c:when test="${suppliesEntity.goodsFuma==1}">
                                        <input type="radio" value="1"   name="goodsFuma" checked />是
                                        <input type="radio"   value="2"  name="goodsFuma" />否
                                    </c:when>
                                    <c:when test="${suppliesEntity.goodsFuma==2}">
                                        <input type="radio" value="1"  name="goodsFuma" />是
                                        <input type="radio" value="2"  name="goodsFuma" checked />否
                                    </c:when>
                                </c:choose>
                            </div>

                            <label class="col-sm-2 control-label" >物资类型:</label>
                            <div class="col-sm-2">
                                <input class="form-control" type="text" name="goodsMold" value="${suppliesEntity.goodsMold}" />
                            </div>

                            <label class="col-sm-2 control-label" >限制合同采购:</label>
                            <div class="col-sm-1">
                                <c:choose>
                                    <c:when test="${suppliesEntity.goodsPact==1}">
                                        <input type="radio" value="1"   name="goodsPact" checked />是
                                        <input type="radio"   value="2"  name="goodsPact" />否
                                    </c:when>
                                    <c:when test="${suppliesEntity.goodsPact==2}">
                                        <input type="radio" value="1"  name="goodsPact" />是
                                        <input type="radio" value="2"     name="goodsPact" checked />否
                                    </c:when>
                                </c:choose>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label" >物资组:</label>
                            <div class="col-sm-2">
                                <input class="form-control" type="text" name="goodsWuzizu" value="${suppliesEntity.goodsWuzizu}" />
                            </div>
                            <label class="col-sm-2 control-label" >保质期:</label>
                            <div class="col-sm-1">
                                <input class="form-control" type="text" name="goodsDate" value="${suppliesEntity.goodsDate}" />
                            </div>
                            <div class="col-sm-1">
                                <select data-placeholder="" class="chosen-select"  style="width:45px; height: 30px" tabindex="2">
                                    <option value="1" >日</option>
                                    <option value="2" >月</option>
                                    <option value="3" >年</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label" >税率:</label>
                            <div class="col-sm-1">
                                <input class="form-control" type="text" name="rate" value="${suppliesEntity.rate}" />
                            </div>

                            <label class="col-sm-2 control-label" >基本单位:</label>
                            <div class="col-sm-1">
                                <input class="form-control" type="text" name="goodsBasicu" value="${suppliesEntity.goodsBasicu}" />
                            </div>

                            <label class="col-sm-2 control-label" >生产单位:</label>
                            <div class="col-sm-1">
                                <input class="form-control" type="text" name="goodsProdu" value="${suppliesEntity.goodsProdu}" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label" >净重:</label>
                            <div class="col-sm-1">
                                <input class="form-control" type="text" name="goodsSuttle" value="${suppliesEntity.goodsSuttle}" />
                            </div>
                            <label class="col-sm-2 control-label" >毛重:</label>
                            <div class="col-sm-1">
                                <input class="form-control" type="text" name="goodsRough" value="${suppliesEntity.goodsRough}" />
                            </div>
                        </div>

                        <div class="row">
                            <label class="col-sm-2 control-label" >体积:</label>
                            <div class="col-xs-1">
                                <input type="text" class="form-control" placeholder="长"  name="goodsLength" value="${suppliesEntity.goodsLength}">
                            </div>
                            <div class="col-xs-1">
                                <input type="text" class="form-control"  placeholder="宽" name="goodsWide" value="${suppliesEntity.goodsWide}">
                            </div>
                            <div class="col-xs-1">
                                <input type="text" class="form-control" placeholder="高" name="goodsHigh" value="${suppliesEntity.goodsHigh}">
                            </div>
                            <label class="col-sm-2 control-label" >单位:</label>
                            <div class="col-sm-1">
                                <input type="text" class="form-control"  name="goodsUnit" value="${suppliesEntity.goodsUnit}">
                            </div>
                        </div>
                    </fieldset>     
                    <fieldset>
                        <div class="form-group">
                        	<label class="col-sm-2 control-label" for="ds_host"></label>
                           	<div class="col-sm-4">
                              	<input type="submit" value="提交" class="btn btn-primary"/>
                           	</div>
                           	<label class="col-sm-2 control-label" for="ds_host"></label>
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