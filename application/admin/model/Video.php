<?php

namespace app\admin\model;

use think\Model;

class Video extends Model
{
		// 定义时间戳字段名
	    protected $createTime = 'create_time';
	    protected $updateTime = 'update_time';
	    // 自动写入时间戳
	    protected $autoWriteTimestamp = true;

}