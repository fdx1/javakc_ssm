<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>组织管理展示列表页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<script type="text/javascript" src="<%=path%>/static/js/plugins/ztree/jquery.ztree.core-3.5.js"></script>
		<link href="<%=path%>/static/css/plugins/ztree/zTreeStyle/zTreeStyle.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
					<input type="text" name="oriId" id ="oriId" value=""/>
				<div class="col-sm-12">
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">组织详细信息</div>
					<div class="col-sm-4">
	                	<input class="form-control" id="orgName" name="testName" value="" type="text" placeholder=""/>

					</div>
						<!-- ------------要展示的元素------------ -->
		                 <table class="table table-striped table-bordered table-hover table-condensed">
							 <ul id="org" class="ztree"></ul>
					    </table>
				    </div>
			     </div>
			     </form>
			</div>
		</div>
	</body>
</html>