<?php
namespace app\home\controller;

use app\home\model\User as UserModel;
use app\admin\model\Cate as Cate;
use think\validate;
use think\Request;

class User extends Home
{
	//用户信息
    public function index()
    {
        return $this->fetch();
    }
    public function test()
    {
        return $this->fetch();
    }
    //用户登录
    public function login()
    {

        if($this->request->isPost()){
            $data = $this->request->post();
            // 数据验证
            $result = $this->validate($data, 'User.login');

            if($result !== true) {
                return ['status'=>'0','msg'=>$result];
            };
            $map['username'] = $data['username'];
            $user = UserModel::where($map)->find();
            if (!$user) {
                return ['status'=>'0','msg'=>'用户不存在或被禁用！'];
            }
            // 密码校验
            if ($user['password'] != md5($data['password']) ) {
                return ['status'=>'0','msg'=>'密码不正确'];
            }else{
                session('user_uid', $user['uid']);
                session('user_nick', $user['nick']);
                return ['status'=>'1','msg'=>'登录成功'];
            }
        }
        return $this->fetch();
    }
    //用户注册
    public function register()
    {

    	if($this->request->isPost()){
    		$data = $this->request->post();
            // 验证
            $result = $this->validate($data, 'User.add');
            if($result !== true) {
                return ['status'=>'0','msg'=>$result];
            }
            if (!UserModel::create($data)) {
                return ['status'=>'0','msg'=>$this->getError()];
            }
            return ['status'=>'1','msg'=>'注册成功'];
    	}
        return $this->fetch();
    }
    //用户退出
     public function logout()
    {
        session('user_uid', null);
        session('user_nick', null);
        return ['status'=>'1','msg'=>'退出成功'];
    }
    //用户投稿
    public function contribute()
    {

        $cate = new Cate();
        $list = $cate->getTree();
        $this->assign('list',$list);
        return $this->fetch();
    }
}
