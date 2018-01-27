<?php
namespace app\admin\controller;


use think\Controller; 
use think\Request;
use  app\admin\model\AdminUser;
use  app\admin\model\AccessLog;


class Login extends Controller
{
    public function index()
    {
        return $this->fetch();
    }
    public function login()
    {

        if($this->request->isPost()){
            $request = Request::instance();


            $data = $this->request->post();
            // 数据验证
            $result = $this->validate($data, 'AdminUser.login');

            if($result !== true) {
                return ['status'=>'0','msg'=>$result];
            };

            $map['name'] = $data['name'];
            $user = AdminUser::where($map)->find();
            if (!$user) {
                return ['status'=>'0','msg'=>'管理员不存在或被禁用！'];
            }
            // 密码校验
            if ($user['password'] != md5($data['password']) ) {
                return ['status'=>'0','msg'=>'密码不正确'];
            }else{
                session('admin_id', $user['id']);
                session('admin_nick', $user['name']);
                AccessLog::create([
                    'uid'  =>  $user['id'],
                    'type' =>  1,
                    'name' =>  $user['name'],
                    'target_url' =>  '/admin/login/login',
                    'query_params' => json_encode( $request->param()),
                    'ua' =>  $_SERVER['HTTP_USER_AGENT'],
                    'note' =>  '账号登陆',
                    'ip' =>  $request->ip(),
                ]);
                return ['status'=>'1','msg'=>'登录成功'];
            }
        }
        return  ['status'=>'0','msg'=>'请求方式出错'];
    }
    public function logout()
    {
        session('admin_id', null);
        session('admin_nick', null);
        return ['status'=>'1','msg'=>'退出成功'];
    }
    // 采集登录页
    public function clogin()
    {

        if($this->request->isPost()){
            $request = Request::instance();


            $data = $this->request->post();
            // 数据验证
            $result = $this->validate($data, 'AdminUser.login');

            if($result !== true) {
                return ['status'=>'0','msg'=>$result];
            };

            $map['name'] = $data['name'];
            $user = AdminUser::where($map)->find();
            if (!$user) {
                $this->error('管理员不存在或被禁用');
            }
            // 密码校验
            if ($user['password'] != md5($data['password']) ) {
                $this->error('密码不正确');
            }else{
                session('admin_id', $user['id']);
                session('admin_nick', $user['name']);
                AccessLog::create([
                    'uid'  =>  $user['id'],
                    'type' =>  1,
                    'name' =>  $user['name'],
                    'target_url' =>  '/admin/login/login',
                    'query_params' => json_encode( $request->param()),
                    'ua' =>  $_SERVER['HTTP_USER_AGENT'],
                    'note' =>  '账号登陆',
                    'ip' =>  $request->ip(),
                ]);
                $this->success('登录成功','index/index','',0);
            }
        }
        return $this->fetch('login/clogin');
    }
}
