<?php
namespace app\home\controller;
use think\Db;
class Index extends Home
{
    public function index()
    {
        $list = Db::table('ym_cate')
    			->alias('c')
    			->join('ym_post p','c.id = p.cate_id')
    			->join('ym_user u','p.uid = u.uid')
    			->field('p.*,nick,avatar')
    			->paginate(10);
    	// 处理后的图片数组
    	$arr =[];
    	foreach ($list as $v) {
    		if($v['type']==1){
    			$imgs = explode(',',$v['resource']);
    			$v['resource'] = $imgs;
    		};
    		$arr[]=$v;
    	}
    	$this->assign('page',$list->render());
    	$this->assign('list',$arr);
        return $this->fetch();
    }
    public function test()
    {
        return $this->fetch();
    }
}
