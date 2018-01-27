<?php

namespace app\admin\validate;

use think\Validate;

/**
 * 分类验证器
 * @package app\admin\validate
 */
class Cate extends Validate
{
    //定义验证规则
    protected $rule = [
        'name|分类名'       => 'require',
    ];

    //定义验证提示
    protected $message = [
        'name.require' => '请输入分类名',
    ];

    //定义验证场景
    protected $scene = [
       
    ];
}
