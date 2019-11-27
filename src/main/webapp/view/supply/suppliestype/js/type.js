$(function()
{
	$('form:eq(0)').bootstrapValidator({
    	// message: '这个值是无效的',
    	// //校验是显示图标
    	// feedbackIcons: {
        //     valid: 'glyphicon glyphicon-ok',
        //     invalid: 'glyphicon glyphicon-remove',
        //     validating: 'glyphicon glyphicon-refresh'
        // },
        //需要校验的name名称
        fields: {
            nodeName: {
                validators: {
                    notEmpty: {
                        message: '所属类别是必填项,不能为空!'
                    }
                    }
                }
            },
            typeName: {
            	validators: {
                    notEmpty: {
                        message: '分类名称是必填项,不能为空!'
                    },
                    stringLength: {
                        min: 2,
                        max: 12,
                        message: '分类名称长度不能低于2不能高于12'
                    }
                }
            },
        typeShort: {
            	validators: {
                    notEmpty: {
                        message: '分类简称是必填项,不能为空!'
                    },
                    stringLength: {
                        min: 2,
                        max: 12,
                        message: '分类简称长度不能低于2不能高于12'
                    },
                    different: {
                    	field: 'typeName',
                    	message: '不能和分类名称一致!'
                    }
                }
	        },
        typeOrder: {
	        	validators: {
	        		notEmpty: {
                        message: '节点顺序是必填项,不能为空!'
                    }

	        	}
	        },
        typeLevel: {
	        	validators: {
	        		notEmpty: {
                        message: '节点等级是必填项,不能为空!'
                    }
	        	}
	        }
    });
	
	

});