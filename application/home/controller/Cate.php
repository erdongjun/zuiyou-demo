<?php
namespace app\home\controller;

use app\admin\model\Cate as CateModel;

class Cate extends Home
{
	//分类列表
    public function list()
    {

    	$cate = new CateModel();
        $list = $cate->getTree();
        $this->assign('list',$list);
        return $this->fetch();
    }
    //分类首页
     public function index()
    {
    	
    	$cate = new CateModel();

        return $this->fetch();
    }
    
}
