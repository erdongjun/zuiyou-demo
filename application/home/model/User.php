<?php

namespace app\home\model;

use think\Model;
class User extends Model
{
		
		// 定义时间戳字段名
	    protected $createTime = 'create_time';
	    protected $updateTime = 'update_time';

	    // 自动写入时间戳
	    protected $autoWriteTimestamp = true;

	    // 自动完成
	    protected $insert = ['ip','email_code'];

	    // 对密码进行加密
	    public function setPasswordAttr($value)
	    {
	        return md5($value);
	    }
	    // 注册时ip
	    protected function setIpAttr()
	    {
	        return request()->ip();
	    }
	    //邮箱验证码 email_code
	    public function setEmailCodeAttr()
	    {
	        return createEmailCode();
	    }



	    

}