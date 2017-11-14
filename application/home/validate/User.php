<?php
namespace app\home\validate;

use think\Validate;

/**
 * 用户验证器
 * @package app\home\validate
 */

class User extends Validate
{
    //定义验证规则
    protected $rule = [
        'username|用户名' => 'require|unique:User|length:4,20',
        'nick|昵称'       => 'require|unique:User',
        'password|密码'  => 'require|length:6,20',
        'email|邮箱'   => 'email|unique:User',
        'verify|验证码'=>'require|captcha'

    ];

    //定义验证提示
    protected $message = [
        'username.require' => '请输入用户名',
        'nick.require' => '请输入昵称',
        'password.require' => '密码不能为空',
        'password.length' => '密码长度6-20位',
        'mobile.regex'  => '手机号不正确',
        'email.email' => '邮箱格式错误',
        'email.unique' => '邮箱已注册',
        'verify.require' => '请输入验证码',
        'verify.captcha' => '验证码不正确',
    ];

    //定义验证场景
    protected $scene = [
        //  添加
        'add'  =>  ['username','password' , 'email'],
        //更新
        'update'  =>  ['nick' => 'require|unique:AdminUser','password' => 'length:6,20', 'mobile'],
        //更新个人信息
        'info'  =>  ['name', 'password' => 'length:6,20', 'mobile'],
        //登录
        'login'  =>  ['username' => 'require', 'password','verify'],
    ];
}
?>
