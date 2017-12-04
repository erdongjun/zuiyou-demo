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
            // dump('222');

            $post_data = $this->request->post();
            $uid = session('user_uid');
            $user_info =  UserModel::where('uid',$uid)->field('nick,avatar')->find();
            // dump($user_info );
            if(!$user_info){
                return [
                    'status'=>0,
                    'msg'=>$this->getError()
                ];
            }

            $data=[];
            $data['post_id'] = $post_data['post_id'];
            $data['content'] = $post_data['content'];
            $data['content_type'] = $post_data['content_type'];
            $data['comment_uid'] = $uid;
            $data['comment_nick'] = $user_info['nick'];
            $data['comment_avatar'] = $user_info['avatar'];





            // dump($post_data);die;


            // $data['comment_pid'] = $post_data['comment_pid'] ? $post_data['comment_pid']:0;
            // $data['replyed_uid'] = $post_data['replyed_uid'] ? $post_data['replyed_uid']:0;





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