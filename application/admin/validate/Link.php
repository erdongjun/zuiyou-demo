<?php

namespace app\admin\validate;

use think\Validate;

/**
 * 友链验证器
 * @package app\admin\validate
 */
class Link extends Validate
{
    //定义验证规则
    protected $rule = [
        'title|友链标题'       => 'require',
        'c_id|友链分类'       => 'require',
        'link|链接'       => 'require',
    ];

    //定义验证提示
    protected $message = [
    ];

    //定义验证场景
    protected $scene = [
        'add'  =>  ['title','c_id','content'],
         //更新
        'edit'  =>  ['title','c_id','content'],
    ];
}
