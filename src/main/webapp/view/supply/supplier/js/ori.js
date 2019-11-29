$(function() {

    //选择父类触发事件
    $('#ori').click(function () {
        layer.open({
            type: 2,
            title: '选择内部组织',
            shadeClose: true,
            shade: 0.8,
            area: ['65%', '65%'],
            content: root + '/supplier/createParent.do'
        });
    });
    $('form:eq(0)').bootstrapValidator({

        trigger:"change",
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            supplierType01: {
                validators: {
                    regexp: {
                        regexp:/^[1-9]\d*$/,
                        message: '供应商类型是必填项,不能为空!'
                    }
                }
            },
            supplierName: {
                validators: {
                    notEmpty: {
                        message: '供应商名称是必填项,不能为空!'
                    }
                }
            },
            supplierType02: {
                validators: {
                    regexp: {
                        regexp:/^[1-9]\d*$/,
                        message: '供应商分类是必填项,不能为空!'
                    }
                }
            },
            supplierJname: {
                validators: {
                    notEmpty: {
                        message: '供应商简称是必填项,不能为空!'
                    }
                }
            },
            supplierFr: {
                validators: {
                    notEmpty: {
                        message: '法人是必填项,不能为空!'
                    }
                }
            },
            supplierFrphone: {
                validators: {
                    notEmpty: {
                        message: '法人电话是必填项,不能为空!'
                    }
                }
            },
            supplierAddress: {
                validators: {
                    notEmpty: {
                        message: '供应商地址是必填项,不能为空!'
                    }
                }
            },
            supplierCode: {
                validators: {
                    notEmpty: {
                        message: '社会统一信任代码是必填项,不能为空!'
                    }
                }
            },
            supplierLxr: {
                validators: {
                    notEmpty: {
                        message: '联系人是必填项,不能为空!'
                    }
                }
            },
            supplierLphone: {
                validators: {
                    regexp: {
                        regexp:/^1[3456789]\d{9}$/,
                        message: '联系电话是必填项,不能为空!'
                    }
                }
            },
            supplierMail: {
                validators: {
                    notEmpty: {
                        message: '联系人邮箱是必填项,不能为空!'
                    }
                }
            },
            supplierMh: {
                validators: {
                    notEmpty: {
                        message: '门户是必填项,不能为空!'
                    }
                }
            },
            supplierHt: {
                validators: {
                    notEmpty: {
                        message: '合同是必填项,不能为空!'
                    }
                }
             },
            // oriName: {
            //     validators: {
            //         notEmpty: {
            //             message: '供应商内部组织是必填项,不能为空!'
            //         }
            //     }
            // }
        }
    });
});