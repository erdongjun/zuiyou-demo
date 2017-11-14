<?php

namespace app\admin\model;

use think\Model;

class User extends Model
{
		// 定义时间戳字段名
	    protected $createTime = 'create_time';
	    protected $updateTime = 'update_time';

	    // 自动写入时间戳
	    protected $autoWriteTimestamp = true;

	    // 对密码进行加密
	    public function setPasswordAttr($value)
	    {
	        return MD5($value);
	    }
	    // 写入时，将权限ID转成JSON格式
	    public function setAuthAttr($value)
	    {
	        if (empty($value)) return '';
	        return json_encode($value);
	    }

	    // 获取最后登陆ip
	    public function setLastLoginIpAttr()
	    {
	        return get_client_ip();
	    }
	    

}