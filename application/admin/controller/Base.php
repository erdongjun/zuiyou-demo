<?php

namespace app\admin\controller ;

use think\Controller; 
use think\Request;
use think\Validate;

use app\admin\model\AdminRole;
use app\admin\model\AdminUserRole;
use app\admin\model\AdminUser;
use app\admin\model\AdminRoleAccess;
use app\admin\model\AdminAccess;
use app\admin\model\AccessLog;

/**
* 	基类
*/
class  Base extends Controller
{	

	
	//忽略页面
	public function getIgnore(){
		$ignore_urls = [
			'login/cindex',
			'login/index',
			'login/login',
			'login/logout',
			'index/index',
			'system/noaccess',
			'system/index',
		];
		return $ignore_urls;
	} 
	public function _initialize()
	{
		if(!session('admin_id')){
			$this->redirect('/admin/login/index');
		};
		$request = Request::instance();
		$controller = strtolower($request->controller());
		$action = strtolower($request->action());

		//当前路由
		$curr_url = $controller.'/'.$action;
		$isAjax = $request ->isAjax();
		$uid = session('admin_id');
		$name = session('admin_nick');
		// 取出权限列表 key=> urls value=>title
		$curr_list = array_unique(AdminAccess::where([])->column('title','urls'));
		//key键 转成xiaoxie
		$low_curr_list = array_change_key_case($curr_list);

		$note = '';
		$type = 0;
		if(array_key_exists($curr_url,$low_curr_list)){
			$note = $low_curr_list[$curr_url];
		};
		if(in_array($action,['del','edit','add']) && $isAjax){
			$type = 2;
		}
		if($type !== 0){
			AccessLog::create([
			    'uid'  =>  $uid,
			    'type' =>  $type,
			    'name' =>  $name,
			    'target_url' =>  '/admin/'.$curr_url,
			    'query_params' => json_encode( $request->param()),
			    'ua' =>  $_SERVER['HTTP_USER_AGENT'],
			    'note' =>  $note,
			    'ip' =>  $request->ip(),
			]);
		}
		

		//无需验证权限的页面
		if( in_array($curr_url, $this->getIgnore() ) ){
			return true;
		};
		//超级管理员无需任何页面
		$info = AdminUser::get($uid);
		if($info['is_admin'] === 1){
			return true;
		}
		 
		/**
		 * 统一处理用户权限验证
		 * 
		 * 权限验证逻辑
		 * 
		 * 在权限表中取出所有的权限链接
		 * 
		 * 判断当前访问的链接是否在所拥有的权限列表中
		 * 
		 */
		$link_list = $this->getLinkList($uid);
		$low_link_list = array_map("changeLower",$link_list);

		if(!in_array($curr_url,$low_link_list )){
			// dump($request->isAjax());exit();
			if($request->isAjax()){
				// dump($low_link_list);
				// dump(!in_array($curr_url,$low_link_list ));
				// exit();
				// return json(['status'=>10001,'msg'=>'暂无权限']) ;
				$this->error("暂无权限");
				// dump($curr_url);

				exit();

			}
			
			$this->redirect('/admin/system/noaccess');
		}

	}
	

	/**
	 * 获取当前用户的所属的角色列表
	 * 
	 * 通过角色获取所属权限列表 
	 * 
	 * 在权限表中取出所有的权限链接
	 * 
	 */

	public function getLinkList($uid){
		//链接列表
		$link_list = [];
		//角色列表
		$role_list = AdminUserRole::where(['uid'=>$uid])->column('role_id');


		if($role_list){
			$access_list = array_unique(AdminRoleAccess::where('role_id','IN',$role_list)->column('access_id'));
			$link_list = array_unique(AdminAccess::where('id','IN',$access_list)->where('status',1)->column('urls'));
		}
		return $link_list;
	}


}