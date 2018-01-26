<?php

namespace app\admin\validate;

use think\Validate;

/**
 * 管理员验证器
 * @package app\admin\validate
 */
class AdminUser extends Validate
{
    //定义验证规则
    protected $rule = [
        'name|用户名' => 'require|alphaNum|unique:AdminUser|length:4,20',
        'password|密码'  => 'require|length:6,20',
        'email' => 'email|unique:AdminUser',
        'mobile|手机号'   => 'requireWith:mobile|regex:/^1[34578]\d{9}$/|unique:AdminUser',
        // 'verify|验证码'=>'require|captcha'
    ];

    //定义验证提示
    protected $message = [
        'name.require' => '请输入用户名',
        'password.require' => '密码不能为空',
        'password.length' => '密码长度6-20位',
        'mobile.regex'  => '手机号不正确',
        'verify.require' => '请输入验证码',
        'verify.captcha' => '验证码不正确',
    ];

    //定义验证场景
    protected $scene = [
        //  添加
        'add'  =>  ['name','password','email' ,'mobile'],
        //更新
        'edit'  =>  ['password'=>'requireWith:password|length:6,20','email'=>'requireWith:email|email|unique:AdminUser' ,'mobile'],
        //更新个人信息
        'info'  =>  ['name', 'password' => 'length:6,20', 'mobile'],
        //登录
        'login'  =>  ['name' => 'require', 'password','verify'],
    ];
}
