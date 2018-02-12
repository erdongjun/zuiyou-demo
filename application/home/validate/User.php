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
        'password|密码'  => 'require|length:6,20',
        'email|邮箱'   => 'email|unique:User'
    ];

    //定义验证提示
    protected $message = [
        'password.require' => '密码不能为空',
        'password.length' => '密码长度6-20位',
        'email.email' => '邮箱格式错误',
    ];

    //定义验证场景
    protected $scene = [
        // 注册
        'res'  =>  ['email','password' ],
        //更新
        'update'  =>  ['nick' => 'require|unique:AdminUser','password' => 'length:6,20', 'mobile'],
        //更新个人信息
        'info'  =>  ['name', 'password' => 'length:6,20', 'mobile'],
        //登录
        'login'  =>  ['email' => 'require|email', 'password'],
    ];
}
?>
