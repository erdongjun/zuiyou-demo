<?php
namespace app\home\controller;

use app\home\model\Comment as CommentModel;
use app\home\model\User as UserModel;
use  think\Request;
use think\Db;
/**
* 帖子相关
*/
class Comment extends Home
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

    public function create()
    {
        if($this->request->isPost()){
            $post_data = $this->request->post();
            $uid = session('user_uid');
            $user_info =  UserModel::where('uid',$uid)->field('nick,avatar')->find();
            if(!$user_info){
                return [
                    'status'=>0,
                    'msg'=>$this->getError()
                ];
            }
            $data=[];
            //评论内容的主体
            $data['post_id'] = $post_data['post_id'];
            $data['content'] = $post_data['content'];
            $data['content_type'] = $post_data['content_type'];
            $data['comment_uid'] = $uid;
            $data['comment_nick'] = $user_info['nick'];
            $data['comment_avatar'] = $user_info['avatar'];
            // 评论层级 1 一级评论 2 二级评论
            $data['level'] = isset($post_data['level'])?$post_data['level']:1;
            //是否是一级评论
            $isLevelOne = $data['level'] == 1? true :false;
            $data['comment_pid'] = isset($post_data['comment_pid'])?$post_data['comment_pid']:'';
            $data['replyed_uid'] = isset($post_data['replyed_uid'])?$post_data['replyed_uid']:'';

            if(!!$data['replyed_uid']){
                 $replyed_info =  UserModel::where('uid',$data['replyed_uid'])->field('nick,avatar')->find();
                $data['replyed_nick'] = $replyed_info['nick'];
                $data['replyed_avatar'] = $replyed_info['avatar'];
            }
            if($post_data['content_type']==0){
                // 文字
                $data['resource'] ='';
            }
            if($post_data['content_type']==1){
                //图片
                $imgStr = implode(',',$post_data['img']);
                $data['resource'] =$imgStr;
            }
            if($post_data['content_type']==2){
                //视频
                $data['resource'] = $post_data['video'];
            }
            if($post_data['content_type']==3){
                //音频
                $data['resource'] = $post_data['audio'];
            }




            // dump($data);die;



            if (!CommentModel::create($data)) {
                return ['status'=>'0','msg'=>$this->getError()];
            }

            return ['status'=>'1','msg'=>'发布成功'];
            // dump($post_data);die;
        }




       
    }
		
}