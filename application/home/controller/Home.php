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
	        $info = $file->validate(['ext'=>'jpg,png,gif,jpeg,mp3,mp4'])->move(ROOT_PATH . 'public' . DS . 'uploads');
	        

	        if($info){
	        	$name = $info->getSaveName();
	            return json(['status'=>'1','type'=>$file->getInfo()['type'],'url'=> '/public/uploads/'.$name,'msg'=>'上传成功']);
	        }else{
	            // 上传失败获取错误信息
	        	return json(['status'=>'0','msg'=>$file->getError()]);
	        }

	}
}