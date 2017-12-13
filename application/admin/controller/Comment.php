<?php
namespace app\admin\controller;


use app\home\model\Comment as CommentModel;
class Comment extends Admin
{
    //帖子列表
	 public function lis()
        {
           
            $list= CommentModel::where([])->paginate(10);
        	// 处理后的图片数组
        	$arr =[];
        	foreach ($list as $v) {
        		if($v['content_type']==1){
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
