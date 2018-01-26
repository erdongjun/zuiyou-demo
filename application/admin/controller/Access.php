<?php
namespace app\admin\controller;

use app\admin\model\AdminAccess;
use app\admin\model\AdminMenu;

/**
 * 权限管理
 */

class Access extends Base
{
	//权限列表
    public function index()
    {
        $list = AdminAccess::order('id desc')->paginate(10);
        $this->assign('page',$list->render());
        $this->assign('list',$list);
        return $this->fetch('access/index');
    }
    // 添加权限
    public function add()
    {	

    	if($this->request->isPost()){
            // 验证
            $valid_res = $this->validate($_POST, 'AdminAccess');
            if($valid_res !== true) {
                return ['status'=>'0','msg'=>$valid_res];
            }
            $AdminAccessModel = new AdminAccess($_POST);

            $data_res = $AdminAccessModel->allowField(true)->save();

            if (!$data_res) {
                return ['status'=>'0','msg'=>$this->getError()];
            }
            return ['status'=>'1','msg'=>'添加成功'];
    	}
        $menu = new AdminMenu();
        $list = $menu ->cateTree();
        $this->assign('list',$list);
        return $this->fetch('access/add');
    }
    // 编辑权限
    public function edit()
    {
        if($this->request->isPost()){

            $valid_res = $this->validate($_POST, 'AdminAccess.edit');

            if($valid_res === true){
                $data_res = AdminAccess::update($_POST);


                if($data_res){
                    return ['status'=>'1','msg'=>'更新成功!'];
                }else{
                    return ['status'=>'0','msg'=>$this->getError()];
                }
            }else{
                return ['status'=>'0','msg'=>$valid_res];
            }
        }

    	$id = $this->request->param('id');
        if(!$id){
         $this->redirect('/admin/access/index');
        }

        $menu = new AdminMenu();
        $list = $menu ->cateTree();
        $info = AdminAccess::get($id);
        $this->assign('list',$list);
    	$this->assign('info',$info);
    	return $this->fetch('access/edit');
    }


    // 删除分类
    public function del()
    {
    	$id = $this->request->param('id');
        $user = AdminAccess::get($id );
    	if($user->delete()){
    		return ['status'=>'1','msg'=>'删除成功'];
    	}else{
    		return ['status'=>'1','msg'=>$this->getError()];
    	}
    }
}
