<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>物资添加页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/supplies/save.do" method="post" class="form-horizontal" role="form">
                    <fieldset>
                        <legend>物资新增</legend>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" >物资分类:</label>
<%--                           <div id="form-control" class="menuContent" style="display: none; position:absolute " >--%>
<%--                               <ul id="treeDemo" class="ztree" style="margin-top: 0; width: 160px"></ul>--%>
<%--                           </div>--%>
<%--                           <div class="col-sm-3">--%>
<%--                               <input class="form-control" type="text" name="typeName" />--%>
<%--                                   <a id="menuBtn" onclick="showRMenu(); return false;" class="glyphicon glyphicon-search"></a>--%>
<%--                           </div>--%>
                           <div class="col-sm-3">
                           <div class="input-group">
                               <input type="text" class="form-control" placeholder="选择物资分类" readonly>
                               <span class="input-group-btn">
                                <button class="btn btn-default glyphicon glyphicon-search" type="button"></button>
                              </span>
                           </div><!-- /input-group -->
                           </div>
                          <label class="col-sm-2 control-label" >物资名称:</label>
                          <div class="col-sm-3">
							  <input class="form-control" type="text" name="goodsName" />
                          </div>
                       </div>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" >规格:</label>
                          <div class="col-sm-3">
                             <input class="form-control" type="text"  name="goodsGuige"/>
                          </div>
						<label class="col-sm-2 control-label" >物资简称:</label>
						<div class="col-sm-3">
							<input class="form-control" type="text" name="goodsJiancheng" />
						</div>
					   </div>
						<div class="form-group">
							<label class="col-sm-2 control-label" >物资简述:</label>
							<div class="col-sm-8">
								<textarea class="form-control" rows="3" name="goodsCommit"></textarea>
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
                            <div class="col-sm-1">
                                <input type="radio"  value="1" name="goodsFuma" />是
                                <input type="radio"  value="2" name="goodsFuma" />否
                            </div>

                            <label class="col-sm-2 control-label" >物资类型:</label>
                            <div class="col-sm-2">
                                <input class="form-control" type="text" name="goodsMold" />
                            </div>

                            <label class="col-sm-2 control-label" >限制合同采购:</label>
                            <div class="col-sm-1">
                                <input type="radio"   value="1" name="goodsPact" />是
                                <input type="radio"  value="2" name="goodsPact" />否
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label" >物资组:</label>
                            <div class="col-sm-2">
                                <input class="form-control" type="text" name="goodsWuzizu" />
                            </div>
                            <label class="col-sm-2 control-label" >保质期:</label>
                            <div class="col-sm-1">
                                <input class="form-control" type="text" name="goodsDate" />
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
                                <input class="form-control" type="text" name="rate" />
                            </div>

                            <label class="col-sm-2 control-label" >基本单位:</label>
                            <div class="col-sm-1">
                                <input class="form-control" type="text" name="goodsBasicu" />
                            </div>

                            <label class="col-sm-2 control-label" >生产单位:</label>
                            <div class="col-sm-1">
                                <input class="form-control" type="text" name="goodsProdu" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label" >净重:</label>
                            <div class="col-sm-1">
                                <input class="form-control" type="text" name="goodsSuttle" />
                            </div>
                            <label class="col-sm-2 control-label" >毛重:</label>
                            <div class="col-sm-1">
                                <input class="form-control" type="text" name="goodsRough"  />
                            </div>
                        </div>

                        <div class="row">
                            <label class="col-sm-2 control-label" >体积:</label>
                            <div class="col-xs-1">
                                <input type="text" class="form-control" placeholder="长"  name="goodsLength">
                            </div>
                            <div class="col-xs-1">
                                <input type="text" class="form-control"  placeholder="宽" name="goodsWide">
                            </div>
                            <div class="col-xs-1">
                                <input type="text" class="form-control" placeholder="高" name="goodsHigh">
                            </div>
                            <label class="col-sm-2 control-label" >单位:</label>
                            <div class="col-sm-1">
                                <input type="text" class="form-control"  name="goodsUnit">
                            </div>
                        </div>

                    </fieldset>
                    <fieldset>
                        <div class="form-group">
                        	<label class="col-sm-2 control-label" ></label>
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