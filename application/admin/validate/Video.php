<?php

namespace app\admin\validate;

use think\Validate;

/**
 * 视频验证器
 * @package app\admin\validate
 */
class Video extends Validate
{
    //定义验证规则
    protected $rule = [
        'title|视频标题'       => 'require',
        'c_id|视频分类'       => 'require',
        'url|视频链接'       => 'require',
    ];

    //定义验证提示
    protected $message = [
        'title.require' => '请输入视频标题',
    ];

    //定义验证场景
    protected $scene = [
        'add'  =>  ['title','c_id','content'],
         //更新
        'edit'  =>  ['title','c_id','content'],
    ];
}
