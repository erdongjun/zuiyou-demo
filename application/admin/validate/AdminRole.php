<?php

namespace app\admin\validate;

use think\Validate;

/**
 * 角色验证器
 * @package app\admin\validate
 */
class AdminRole extends Validate
{
    //定义验证规则
    protected $rule = [
        'name|角色名称' => 'require|unique:AdminRole|length:1,10',
    ];

    //定义验证提示
    protected $message = [
        'name.require' => '角色名称不可为空',
    ];

    //定义验证场景
    protected $scene = [
        //  添加
        'add'  =>  ['name'],
        //更新
        'edit'  =>  ['name'=>'unique:AdminRole'],
    ];
}
