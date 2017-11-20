<?php
namespace app\admin\controller;

use app\admin\model\Cate as CateModel;
use app\home\model\Post as PostModel;
use  think\Request;
use think\Db;
class Post extends Admin
{
    //帖子列表
	 public function lis()
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
            // dump($arr);
        	$this->assign('page',$list->render());
        	$this->assign('list',$arr);
            return $this->fetch();
        }

}
