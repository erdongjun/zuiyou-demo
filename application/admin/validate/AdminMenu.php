<?php

namespace app\admin\validate;

use think\Validate;

/**
 * 菜单验证器
 * @package app\admin\validate
 */
class AdminMenu extends Validate
{
    //定义验证规则
    protected $rule = [
        'name|菜单名'       => 'require|unique:AdminMenu',
    ];

    //定义验证提示
    protected $message = [
        'name.require' => '请输入菜单名',
    ];

    //定义验证场景
    protected $scene = [
        //更新
        'update'  =>  ['name'],
    ];
}
