<?php
namespace app\home\controller;

use app\home\model\User as UserModel;
use think\validate;
use think\Request;


class User extends Home
{
	//用户信息
    public function index()
    {
        if(session('user_uid')){
            $user = UserModel::get(session('user_uid'));
            $uid = $user['id'];
            $user['invited_num'] =count(UserModel::where('used_invite_code',$uid)->select()) ;
            $this->assign('info',$user);
        }


        return $this->fetch('user/index');
    }
    //用户登录
    public function login()
    {
        if(request()->isPost()){
            $data = $_POST;
            // 数据验证
            $result = $this->validate($data, 'User.login');
            if($result !== true) {
                return ['status'=>'0','msg'=>$result];
            };
            $map['email'] = $data['email'];
            $user = UserModel::where($map)->find();
            if (!$user) {
                return ['status'=>'0','msg'=>'该用户不存在！'];
            }
            if ($user['status']!==1) {
                return ['status'=>'0','msg'=>'该用户未激活,请邮箱激活后登录！'];
            }
            // 密码校验
            if ($user['password'] != md5($data['password']) ) {
                return ['status'=>'0','msg'=>'密码不正确'];
            }else{
                session('user_uid', $user['id']);
                session('user_email', $user['email']);
                return ['status'=>'1','msg'=>'登录成功'];
            }
        }
        return $this->fetch('user/login');
    }
    //用户注册
    public function register()
    {
        // phpinfo();
    	if($this->request->isPost()){
    		$data = $this->request->post();
            // 验证
            $result = $this->validate($data, 'User.res');
            if($result !== true) {
                return json(['status'=>'0','msg'=>$result]) ;
            }
            $user = UserModel::create($_POST);
            if (!$user) {
                return json(['status'=>'0','msg'=>$this->getError()]);
            }
            $email_code = $user->email_code;
            $email = $user->email;
            $uid = $user->id;
            //发送邮箱验证码
            $link = "http://localhost:7888/home/user/active.html?uid=".$uid."&email_code=".$email_code;

            $content = '恭喜你网站注册成功,账户激活,请点击链接<a href='.$link.'>'.$link.'</a>进行激活';

            $res = sendMail($email,'恭喜你网站注册成功,账户激活链接',$content );
            if ($res !==true) {
                // UserModel:destroy($uid);
                return json(['status'=>'0','msg'=>'邮箱不存在!']);
            }
            return json(['status'=>'1','msg'=>'注册成功,请登录邮箱验证后登录']);
    	}
        return $this->fetch('user/register');
    }
    //邮箱激活
    public function active(){
        $uid = input('uid');
        $email_code = input('email_code');

        $user = UserModel::get($uid);
        //先判断当前用户是否已激活
        if($user['status'] === 1){
            //判断是否已登录
            if(session('user_uid')){
                //已登录跳转到个人中心
                $this->redirect('User/index');
            }else{
                //跳转到登录页
                $this->redirect('User/login');
            }
        }else{
            //未激活或封号
            if($email_code  !== $user['email_code'] ){
                //激活失败
                $this->assign('status',0);
            }else {

                if($user['used_invite_code']){
                    $curr_time = strtotime("+1 hours");
                }else{
                    $curr_time =time();
                }
                UserModel::update(['id' => $uid, 'status' => 1,'member_end_time'=>$curr_time]);
                //激活成功
                $this->assign('status',1);
            }
        }
        return $this->fetch('user/active');

    }
    //用户退出
     public function logout()
    {
        session('user_uid', null);
        session('user_email', null);
        return ['status'=>'1','msg'=>'退出成功'];
    }
   
}
