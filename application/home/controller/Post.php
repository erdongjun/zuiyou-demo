<?php
namespace app\home\controller;

use app\admin\model\Cate as CateModel;
use app\home\model\Post as PostModel;
use app\home\model\Comment as CommentModel;
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
        $comment= CommentModel::where(['post_id'=>$id])->select();

        $commentDate = array();
        foreach ($comment as $v) {

            if($v['level'] == 1){
                if($v['content_type']==1){
                    if(!$v['resource']){
                        $resource=[];
                    }else { 
                        $resource = explode(',',$v['resource']);
                    }
                    $v['resource'] = $resource;
               };

               $son = [];

                foreach ($comment as $b) {
                    if($b['comment_pid'] == $v['id']){
                        if($b['content_type']==1){
                            if(!$b['resource']){
                                $sonresource=[];
                            }else { 
                                $sonresource = explode(',',$b['resource']);
                            }
                            $b['resource'] = $sonresource;
                       };
                        $son[] = $b;
                    }
                }
                $v['son'] = $son;
                $commentDate[] = $v;
            }

        }
        // dump($commentDate);

        $this->assign('comment',$commentDate);


    	$this->assign('postinfo',$postinfo);
        return $this->fetch();
    }
		
}