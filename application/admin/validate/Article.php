<?php

namespace app\admin\validate;

use think\Validate;

/**
 * 文章验证器
 * @package app\admin\validate
 */
class Article extends Validate
{
    //定义验证规则
    protected $rule = [
        'title|文章标题'       => 'require',
        'c_id|文章分类'       => 'require',
        'content|内容'       => 'require',
    ];

    //定义验证提示
    protected $message = [
        'title.require' => '请输入文章标题',
    ];

    //定义验证场景
    protected $scene = [
        'add'  =>  ['title','c_id','content'],
         //更新
        'edit'  =>  ['title','c_id','content'],
    ];
}
