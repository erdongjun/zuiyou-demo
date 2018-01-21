<?php

namespace app\admin\validate;

use think\Validate;

/**
 * 用户验证器
 * @package app\admin\validate
 */
class AdminAccess extends Validate
{
    //定义验证规则
    protected $rule = [
        'title|权限标题' => 'require|unique:AdminAccess|length:1,10',
        'urls|网站链接' => 'require|unique:AdminAccess',
    ];

    //定义验证提示
    protected $message = [
        'title.require' => '权限标题不可为空',
    ];

    //定义验证场景
    protected $scene = [
        //  添加
        'add'  =>  ['title','urls'],
        //更新
        'edit'  =>  ['title'=>'unique:AdminAccess','urls'=>'unique:AdminAccess'],
    ];
}
