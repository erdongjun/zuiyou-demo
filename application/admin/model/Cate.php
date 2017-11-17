<?php

namespace app\admin\model;

use think\Model;

class Cate extends Model
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
	    // 分类树
	    public function cateTree()
	    {
	    	$list = $this->select();
	    	return $this->_sort($list);
	    }

	    public function getTree()
	    {
	    	$list = $this->select();
	    	return $this->_get_attr($list);
	    }

	    private function _get_attr($a,$pid=0){  
		    $tree = array();  //每次都声明一个新数组用来放子元素  
		    foreach($a as $v){  
		        if($v['parent_id'] == $pid){                      //匹配子记录  
		            $v['son'] =$this-> _get_attr($a,$v['id']); //递归获取子记录  
		            if($v['son'] == null){  
		                unset($v['son']);             //如果子元素为空则unset()进行删除，说明已经到该分支的最后一个元素了（可选）  
		            }  
		            $tree[] = $v;                           //将记录存入新数组  
		        }  
		    }  
		    return $tree;                                  //返回新数组  
		}  
	    //排序
	     private function _sort($list,$pid=0,$level=0)
	    {
	    	static $arr = array();

	    	foreach ($list as $k => $v) {
	    		if($v['parent_id'] == $pid){
	    			$v['level'] = $level;
	    			$arr[] = $v;
	    			
	    			$this->_sort($list,$v['id'],$level+1);
	    		}
	    	}
	    	return $arr;
	    	
	    }
	    //获取该分类下的帖子
	    public function getPost()
	    {
	    	return $this->hasMany("post","id","id");
	    }











}