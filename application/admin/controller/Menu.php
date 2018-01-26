<?php
namespace app\admin\controller;

use app\admin\model\AdminMenu;
/**
 * 后台菜单栏
 */
class Menu extends Base
{
	// 菜单列表
    public function index()
    {
    	$menu = new AdminMenu();
        $list = $menu ->cateTree();
    	$this->assign('list',$list);
        return $this->fetch('menu/index');
    }
    // 添加菜单
    public function add()
    {	
        $menu = new AdminMenu();
    	if($this->request->isPost()){
            // 验证
            $valid_res = $this->validate($_POST, 'AdminMenu');
            if($valid_res !== true) {
                return ['status'=>'0','msg'=>$valid_res];
            }
            $AdminMenuModel = new AdminMenu($_POST);

            $data_res = $AdminMenuModel->allowField(true)->save();

            if (!$data_res) {
                return ['status'=>'0','msg'=>$this->getError()];
            }
            return ['status'=>'1','msg'=>'添加菜单成功'];
    	}

        $list = $menu ->cateTree();
        $this->assign('list',$list);

        return $this->fetch('menu/add');
    }
    // 编辑菜单

    public function edit()
    {
    	if($this->request->isPost()){

    		$result = $this->validate($_POST, 'AdminMenu.edit');

    		if( $result === true){
                    if(AdminMenu::update($_POST)){
    	    			return ['status'=>'1','msg'=>'更新成功'];
    	    		}else{
    	    			return ['status'=>'0','msg'=>$this->getError()];
    	    		}
    		}else{
	    		return ['status'=>'0','msg'=>$result];
    		}
    		
    	}
        $menu = new AdminMenu();
        $list = $menu ->cateTree();
        $id = $this->request->param('id');
        $data = AdminMenu::get($id);

        $this->assign('list',$list);
        $this->assign('info',$data);
    	return $this->fetch('menu/edit');
    }
    // 删除菜单
    public function del()
    {
    	$id = $this->request->param('id');
    	$list = AdminMenu::where('parent_id',$id)->select();
        if($list){
            return ['status'=>'0','msg'=>'该菜单下存在子菜单,不能被删除!'];
        }

        $user = AdminMenu::get($id );

    	if($user->delete()){
    		return ['status'=>'1','msg'=>'删除成功'];
    	}else{
    		return ['status'=>'1','msg'=>$this->getError()];
    	}
    }
}
