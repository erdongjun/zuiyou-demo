<?php 
namespace app\home\model;

use think\Model;

/**
* 评论
*/
class Comment extends Model
{
	// 定义时间戳字段名
    protected $createTime = 'create_time';
    protected $updateTime = 'update_time';

    // 自动写入时间戳
    protected $autoWriteTimestamp = true;

    public function cate()
    {
    	return $this->belongsTo("cate","cate_id","id")->field('id,name');;
    }
	
}