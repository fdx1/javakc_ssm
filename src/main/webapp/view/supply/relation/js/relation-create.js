$(function()
{

	

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

	$('#oriId').click(function()
	{
		layer.open({
			type: 2,
			title: '组织',
			shadeClose: true,
			shade: 0.8,
			area: ['65%', '65%'],
			content:root+'/relation/createOrg.do'
		});
	});

	$('#oriIds').click(function()
	{
		layer.open({
			type: 2,
			title: '收货组织',
			shadeClose: true,
			shade: 0.8,
			area: ['65%', '65%'],
			content:root+'/relation/createOr.do'
		});
	});
});
$(function()
{
	$('form:eq(0)').bootstrapValidator({
		message: '这个值是无效的',
		//校验是显示图标
		feedbackIcons: {
			valid: 'glyphicon glyphicon-ok',
			invalid: 'glyphicon glyphicon-remove',
			validating: 'glyphicon glyphicon-refresh'
		},
		//需要校验的name名称
		fields: {
			goodsId: {
				validators: {
					notEmpty: {
						message: '请选择物资!'
					}
				}
			},
			rate: {
				validators: {
					notEmpty: {
						message: '请添加税率!'
					}
				}
			},
			oriName: {
				validators: {
					notEmpty: {
						message: '请选择收货组织!'
					}
				}
			},

			supplierId: {
				validators: {
					notEmpty: {
						message: '请选择供应商!'
					}
				}
			},
			oriId: {
				validators: {
					notEmpty: {
						message: '请选择组织!'
					}
				}
			}

		}
	});

});