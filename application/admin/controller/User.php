<?php
namespace app\admin\controller;


use app\admin\model\AdminUser as AdminUser;
use think\Request;
use think\Validate;


class User extends Admin
{
	// 管理员列表
    public function index()
    {
    	$list = AdminUser::where([])->select();
    	// dump($list);die;
    	$this->assign('list',$list);
        return $this->fetch();
    }
    // 添加管理员
    public function add()
    {	
    	if($this->request->isPost()){
    		$data = $this->request->post();
            // 验证
            $result = $this->validate($data, 'AdminUser.add');
            if($result !== true) {
                return ['status'=>'0','msg'=>$result];
            }
            // unset($data['id']);
            // $data['last_login_ip'] = '';
            // $data['auth'] = '';
            if (!AdminUser::create($data)) {
                return ['status'=>'0','msg'=>$this->getError()];
            }
            return ['status'=>'1','msg'=>'添加管理员成功'];
    	}
        return $this->fetch();
    }
    // 编辑管理员

    public function edit()
    {
    	$uid = $this->request->param('uid') ?  $this->request->param('uid') :'1000';
    	$data = AdminUser::get($uid);

    	$this->assign('info',$data);

    	if($this->request->isPost()){
    		$post_data = $this->request->post();

    		$result = $this->validate($post_data, 'AdminUser.update');

    		if( $result === true){
    			
                if(session('admin_uid') == 1000){
                    if(AdminUser::update($post_data)){

                         session('admin_nick', $post_data['nick']);
    	    			return ['status'=>'1','msg'=>'更新成功'];
    	    		}else{
    	    			return ['status'=>'0','msg'=>$this->getError()];
    	    		}
                }else{
                    return ['status'=>'0','msg'=>'超级管理员不可设置'];
                }


    		}else{
	    		return ['status'=>'0','msg'=>$result];
    		}
    		
    	}
    	
    	return $this->fetch();
    }
    // 删除管理员

    public function del()
    {
    	$uid = $this->request->param('uid') ?  $this->request->param('uid') :'1000';
    	if($uid == 1000){
    		return ['status'=>'0','msg'=>'超级管理员不可删除'];
    	}

    	$user = AdminUser::get($uid);

    	if($user->delete()){
    		return ['status'=>'1','msg'=>'删除成功'];
    	}else{
    		return ['status'=>'1','msg'=>$this->getError()];
    	}
    }
}
