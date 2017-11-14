<?php

namespace app\admin\validate;

use think\Validate;

/**
 * 用户验证器
 * @package app\admin\validate
 */
class AdminUser extends Validate
{
    //定义验证规则
    protected $rule = [
        'name|用户名' => 'require|unique:AdminUser|length:4,20',
        'nick|昵称'       => 'require|unique:AdminUser',
        'password|密码'  => 'require|length:6,20',
        'mobile|手机号'   => 'requireWith:mobile|regex:^1\d{10}',
        'verify|验证码'=>'require|captcha'

    ];

    //定义验证提示
    protected $message = [
        'name.require' => '请输入用户名',
        'nick.require' => '请输入昵称',
        'password.require' => '密码不能为空',
        'password.length' => '密码长度6-20位',
        'mobile.regex'  => '手机号不正确',
        'verify.require' => '请输入验证码',
        'verify.captcha' => '验证码不正确',
    ];

    //定义验证场景
    protected $scene = [
        //  添加
        'add'  =>  ['nick' => 'require|unique:AdminUser','password' => 'length:6,20', 'mobile'],
        //更新
        'update'  =>  ['nick' => 'require|unique:AdminUser','password' => 'length:6,20', 'mobile'],
        //更新个人信息
        'info'  =>  ['name', 'password' => 'length:6,20', 'mobile'],
        //登录
        'login'  =>  ['name' => 'require', 'password','verify'],
    ];
}
