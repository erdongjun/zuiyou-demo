<?php

namespace app\admin\model;

use think\Model;

class AdminAccess extends Model
{
		// 定义时间戳字段名
	    protected $createTime = 'create_time';
	    protected $updateTime = 'update_time';
	    // 自动写入时间戳
	    protected $autoWriteTimestamp = true;

	    
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

}