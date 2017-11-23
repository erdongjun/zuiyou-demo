<?php
namespace app\home\controller;

use app\admin\model\Cate as CateModel;
use app\home\model\Post as PostModel;
use  think\Request;
use think\Db;
/**
* 帖子相关
*/
class Post extends Home
{
		 //帖子详情
    public function index()
    {
    	$id = input('id');
    	$cateres = CateModel::get($id);

    	$list = Db::table('ym_cate')
    			->alias('c')
    			->join('ym_post p','c.id = p.cate_id')
    			->join('ym_user u','p.uid = u.uid')
    			->where('cate_id','=',$id)
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

    	$this->assign('info',$cateres);
    	$this->assign('list',$arr);
        return $this->fetch();
    }
		
}