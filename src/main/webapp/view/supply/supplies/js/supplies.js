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
            goodsName: {
                validators: {
                    notEmpty: {
                        message: '物资名称是必填项,不能为空!'
                    },
                    stringLength: {
                        min: 2,
                        max: 25,
                        message: '测试名称长度不能低于3不能高于12'
                    }
                }
            },
            rate: {
            	rate: {
                    notEmpty: {
                        message: '税率是必填项,不能为空!'
                    },
                    stringLength: {
                        min: 1,
                        max: 25,
                        message: '税率名称长度不能低于3不能高于12'
                    }
                }
            },
            goodsBasicu: {
            	validators: {
                    notEmpty: {
                        message: '基本单位是必填项,不能为空!'
                    },
                    stringLength: {
                        min: 1,
                        max: 25,
                        message: '基本单位长度不能低于1不能高于16'
                    },
                }
	        },
            goodsProdu: {
	        	validators: {
	        		notEmpty: {
                        message: '生产单位是必填项,不能为空!'
                    },
                    stringLength: {
                        min: 1,
                        max: 25,
                        message: '生产单位长度不能低于1不能高于16'
                    },
	        	}
	        },
	        // userEmail: {
	        // 	validators: {
	        // 		notEmpty: {
            //             message: '电子邮件是必填项,不能为空!'
            //         },
            //         emailAddress: {
	        // 			message: '请输入有效电子邮件!'
	        // 		}
	        // 	}
	        // },
	        // userPhone: {
	        // 	validators: {
	        // 		notEmpty: {
            //             message: '手机号码是必填项,不能为空!'
            //         },
            //         regexp: {
            //         	regexp: /^1[3|4|5|7|8|9]\d{9}$/,
	        // 			message: '请输入有效手机号码!'
	        // 		}
	        // 	}
	        // }
            
        }
    });

});