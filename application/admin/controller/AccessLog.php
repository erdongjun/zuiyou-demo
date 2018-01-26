<?php
namespace app\admin\controller;

use app\admin\model\AccessLog as AdminAccessLog;

/**
 * 安全管理
 */

class AccessLog extends Base
{
	//登陆日志
	public function index()
	{
		$list = AdminAccessLog::where('type','1')->order('id desc')->paginate(10);
        $this->assign('page',$list->render());
        $this->assign('list',$list);
        return $this->fetch('accessLog/index');
	}
	//普通日志
	public function simple()
	{
		$list = AdminAccessLog::where('type','0')->order('id desc')->paginate(10);
        $this->assign('page',$list->render());
        $this->assign('list',$list);
        return $this->fetch('accessLog/simple');
	}
	//操作数据库日志
	public function action()
	{
		$list = AdminAccessLog::where('type','2')->order('id desc')->paginate(10);
        $this->assign('page',$list->render());
        $this->assign('list',$list);
        return $this->fetch('accessLog/action');
	}
}