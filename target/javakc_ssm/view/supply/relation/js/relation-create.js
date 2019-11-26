$(function()
{

	
	//选择父类触发事件
	$('#goodsId').click(function()
	{
		layer.open({
		  type: 2,
		  title: '物资',
		  shadeClose: true,
		  shade: 0.8,
		  area: ['65%', '65%'],
		  content: root+'/relation/createWz.do'
		}); 
	});

	$('#supplierId').click(function()
	{
		layer.open({
			type: 2,
			title: '供应商',
			shadeClose: true,
			shade: 0.8,
			area: ['65%', '65%'],
			content:root+'/relation/createZz.do'
		});
	});
});