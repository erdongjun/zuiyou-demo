<?php
namespace app\admin\controller;

use app\admin\model\Cate as AdminCate;
use think\Request;
use think\Validate;

class Cate extends Base
{
	// 分类列表
    public function index()
    {
    	$cate = new AdminCate();
        $list = $cate ->cateTree();
        $this->assign('list',$list);
    	// dump($list);die;
    	$this->assign('list',$list);
        return $this->fetch();
    }
    // 添加分类
    public function add()
    {	
        $cate = new AdminCate();

    	if($this->request->isPost()){
    		$data = $this->request->post();
            // 验证
            $result = $this->validate($data, 'Cate');
            if($result !== true) {
                return ['status'=>'0','msg'=>$result];
            }
            if (!AdminCate::create($data)) {
                return ['status'=>'0','msg'=>$this->getError()];
            }
            return ['status'=>'1','msg'=>'添加分类成功'];
    	}

        $list = $cate ->cateTree();
        $this->assign('list',$list);

        return $this->fetch();
    }
    // 编辑分类

    public function edit()
    {

        $cate = new AdminCate();

        $list = $cate ->cateTree();


    	$id = $this->request->param('id');
    	$data = AdminCate::get($id);
        // dump($data);die;

        $this->assign('list',$list);
    	$this->assign('info',$data);

    	if($this->request->isPost()){
    		$result = $this->validate($_POST, 'Cate.update');
    		if( $result === true){
                    if(AdminCate::update($_POST)){
    	    			return ['status'=>'1','msg'=>'更新成功'];
    	    		}else{
    	    			return ['status'=>'0','msg'=>$this->getError()];
    	    		}
    		}else{
	    		return ['status'=>'0','msg'=>$result];
    		}
    		
    	}
    	return $this->fetch();
    }
    // 删除分类
    public function del()
    {
    	$id = $this->request->param('id');
    	$list = AdminCate::select();

        foreach ($list as $k => $v) {
            if($v['parent_id'] == $id){
                return ['status'=>'0','msg'=>'该分类下存在子分类,不能被删除!'];
            }
        }
        $user = AdminCate::get($id );

    	if($user->delete()){
    		return ['status'=>'1','msg'=>'删除成功'];
    	}else{
    		return ['status'=>'1','msg'=>$this->getError()];
    	}
    }
}
