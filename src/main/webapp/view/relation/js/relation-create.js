$(function()
{

	
	//选择父类触发事件
	$('#oriId').click(function()
	{
		layer.open({
		  type: 2,
		  title: '选择菜单父类',
		  shadeClose: true,
		  shade: 0.8,
		  area: ['65%', '65%'],
		  content: root+'/relation/createParent.do'
		}); 
	});


});