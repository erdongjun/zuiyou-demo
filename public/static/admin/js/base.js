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
			url:'/admin/login/logout',
			type:'get',
			success:function(data){
				layer.msg(data.msg,{time:1000},function(){
		            if(data.status == 1){
		                window.location.href='/admin/index/index';
		            }
		         })
			}
		})
	});
	// 监听主导航切换
	element.on('nav(topNav)', function(elem){
	  if($(elem).parent().hasClass('layui-nav')){
	  	var index = $(elem).index();
	  	$('#leftNav>.layui-nav-tree').addClass('layui-hide').eq(index).removeClass('layui-hide');
	  }
	});
});
// 二级分类树展开
$('.dk-nav-child').click(function(e){
	e.stopPropagation();
	e.preventDefault();
	$(this).children('dl').toggle();
})
// 子分类点击
$('.dk-nav-child>dl>dd').click(function(e){
	e.stopPropagation();
	e.preventDefault();
	$(this).parents('.dk-nav-tree').find('dd').removeClass('layui-this');
	$(this).addClass('layui-this')
})