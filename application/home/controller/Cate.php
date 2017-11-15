<?php
namespace app\home\controller;

use app\admin\model\Cate as CateModel;

class Cate extends Home
{
    public function index()
    {

    	$cate = new CateModel();
        $list = $cate->getTree();
        // dump($list);
        
        $this->assign('list',$list);
        return $this->fetch();
    }
    
}
