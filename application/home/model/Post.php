<?php 
namespace app\home\model;

use think\Model;

/**
* 帖子数据
*/
class Post extends Model
{
	// 定义时间戳字段名
    protected $createTime = 'create_time';
    protected $updateTime = 'update_time';

    // 自动写入时间戳
    protected $autoWriteTimestamp = true;
	
}