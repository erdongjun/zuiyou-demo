<?php
namespace app\admin\controller;


use  app\admin\model\AdminUser as AdminUser;


class Index extends Base
{
    public function index()
    {
    	$list = AdminUser::where([])->select();

    	$this->assign('list',$list);
    	 $this->assign('name','ThinkPHP');
        $this->assign('uid','thinkphp@qq.com');

        return $this->fetch();
    }

    public function test()
    {
        return $this->fetch();
    }
}
