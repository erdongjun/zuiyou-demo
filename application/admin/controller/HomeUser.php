<?php
namespace app\admin\controller;


use app\admin\model\User as UserModel;
use think\Request;
use think\Validate;


class HomeUser extends Admin
{
	// 用户列表
    public function index()
    {
    	$list = UserModel::where([])->select();
    	// dump($list);die;
    	$this->assign('list',$list);
        return $this->fetch();
    }

    // 删除用户

    public function del()
    {
    	$uid = $this->request->param('uid') ?  $this->request->param('uid') :'1000';
    	if($uid == 1000){
    		return ['status'=>'0','msg'=>'超级管理员不可删除'];
    	}

    	$user = UserModel::get($uid);

    	if($user->delete()){
    		return ['status'=>'1','msg'=>'删除成功'];
    	}else{
    		return ['status'=>'1','msg'=>$this->getError()];
    	}
    }
}
