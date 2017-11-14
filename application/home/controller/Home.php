<?php

namespace app\home\controller ;

use think\Controller; 
/**
* 
*/
class Home extends Controller
{
	
	public function _initialize()
	{
		# code...
		# echo "init";
	}
	public function upload(){
		    // 获取表单上传文件 
		    $file = request()->file('file');
		    // 移动到框架应用根目录/public/uploads/ 目录下
	        $info = $file->move(ROOT_PATH . 'public' . DS . 'uploads');
	        $name = $info->getSaveName();
	        if($name){
	            return json(['status'=>'1','url'=> '/public/uploads/'.$name,'msg'=>'上传成功']);
	        }else{
	            // 上传失败获取错误信息
	        	return json(['status'=>'0','msg'=>$file->getError()]);
	        }

	}
}