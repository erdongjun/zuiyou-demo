<?php
namespace app\admin\controller;

use  app\admin\model\AdminUser as AdminUser;
use think\Controller; 

class Login extends Controller
{
    public function index()
    {
        return $this->fetch();
    }
    public function login()
    {
        if($this->request->isPost()){
            $data = $this->request->post();
            // 数据验证
            $result = $this->validate($data, 'AdminUser.login');

            if($result !== true) {
                return ['status'=>'0','msg'=>$result];
            };
            $map['name'] = $data['name'];
            $user = AdminUser::where($map)->find();
            if (!$user) {
                return ['status'=>'0','msg'=>'用户不存在或被禁用！'];
            }
            // 密码校验
            if ($user['password'] != md5($data['password']) ) {
                return ['status'=>'0','msg'=>'密码不正确'];
            }else{
                session('admin_uid', $user['uid']);
                session('admin_nick', $user['nick']);
                return ['status'=>'1','msg'=>'登录成功'];
            }
        }
        return  ['status'=>'0','msg'=>'请求方式出错'];
    }
    public function logout()
    {
        session('admin_uid', null);
        session('admin_nick', null);
        return ['status'=>'1','msg'=>'退出成功'];
    }
}
