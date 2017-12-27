layui.use(['element','layer','form'], function(){
	var element = layui.element;
	var layer = layui.layer;
	var form = layui.form;

	//监听表单提交
	form.on('submit(formDemo)', function(data){
	    layer.msg(JSON.stringify(data.field));
	    return false;
	});
	// 退出登录
	$('.logout').click(function(){
		$.ajax({
			url:'/public/index.php/admin/login/logout',
			type:'get',
			success:function(data){
				layer.msg(data.msg,{time:1000},function(){
		            if(data.status == 1){
		                window.location.href='/public/index.php/admin/index/index';
		            }
		         })
			}
		})
	});
	// 监听主导航切换
	element.on('nav(topNav)', function(elem){
	  if($(elem).parent().hasClass('layui-nav')){
	  	var index = $(elem).index();
	  	$('#leftNav .layui-nav-tree').addClass('layui-hide').eq(index).removeClass('layui-hide');
	  }
	});

});