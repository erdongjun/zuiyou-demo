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
    	$postinfo = Db::table('ym_post')
    			->alias('p')
    			->join('ym_cate c','p.cate_id = c.id')
    			->join('ym_user u','p.uid = u.uid')
    			->where('p.id','=',$id)
    			->field('p.*,name,nick,avatar')
    			->find();
		if($postinfo['type']==1){
			$imgs = explode(',',$postinfo['resource']);
			$postinfo['resource'] = $imgs;
		};
    	$this->assign('postinfo',$postinfo);
        return $this->fetch();
    }
		
}