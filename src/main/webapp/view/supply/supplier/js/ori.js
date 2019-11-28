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
})