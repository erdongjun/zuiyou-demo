<?php
namespace app\admin\controller;

use app\admin\model\AdminRole;
use app\admin\model\AdminAccess;
use app\admin\model\AdminRoleAccess;
use app\admin\model\AdminMenu;

/**
 * 角色管理
 */

class Role extends Base
{
	//角色列表
    public function index()
    {
        $list = AdminRole::order('id desc')->paginate(10);
        $this->assign('page',$list->render());
        $this->assign('list',$list);
        return $this->fetch('role/index');
    }
    // 添加角色
    public function add()
    {	
    	if($this->request->isPost()){
            // 验证
            $valid_res = $this->validate($_POST, 'AdminRole');
            if($valid_res !== true) {
                return ['status'=>'0','msg'=>$valid_res];
            }
            // $AdminRoleModel = new AdminRole($_POST);

            // $data_res = $AdminRoleModel->allowField(true)->save();
            $role = AdminRole::create([
                'name'  =>  trim($_POST['name']),
                'status'  =>  trim($_POST['status'])
            ]);


            if (!$role) {
                return ['status'=>'0','msg'=>$this->getError()];
            }
            //角色添加成功 接下来保存权限与角色的对应关系
            $access_ids = isset($_POST['access_ids'])?$_POST['access_ids']:[];
            $role_id = $role->id;
           
            if($access_ids){
                //关系存在 保存对应关系表
                $role_access_list = [];
                foreach ($access_ids as $v) {
                    $role_access_list[]=[
                        'access_id' => $v,
                        'role_id' => $role_id
                    ];
                };
                $AdminRoleAccessModel = new AdminRoleAccess;
                $AdminRoleAccessModel->saveAll($role_access_list);
            }
            return ['status'=>'1','msg'=>'添加成功'];
    	}
        //取出所有权限列表
        $list = AdminAccess::where('status',1)->order('id','desc')->select();

       $menu_list = AdminMenu::all();
        // $tree = $menu_list->getTree();

        foreach ($menu_list as $v ){
            $arr = [];
            foreach ($list as $v1 ){

                if($v['id']==$v1['m_id']){
                    $arr[] = $v1;
                }  
            }
            $v['son']=$arr ;

        }
       // dump($menu_list);


        $this->assign('menu_list',$menu_list);
        $this->assign('list',$list);
        return $this->fetch('role/add');
    }
    // 编辑角色
    public function edit()
    {
        if($this->request->isPost()){
            $role_id = $_POST['id'];
            $valid_res = $this->validate($_POST, 'AdminRole.edit');
            if($valid_res === true){
                // $data_res = AdminRole::update($_POST);
                // if(!$data_res){
                //     return ['status'=>'0','msg'=>$this->getError()];
                // }

                $role = new AdminRole();
                // 过滤post数组中的非数据表字段数据
                $data_res = $role->allowField(true)->save($_POST,['id'=>$role_id]);
                if(!$data_res){
                     return ['status'=>'0','msg'=>$this->getError()];
                };
                // 管理员信息更新成功 接下来保存用户与角色的对应关系
                $access_ids = isset($_POST['access_ids'])?$_POST['access_ids']:[];
                // 取出当前角色权限关系列表
                $role_access_list = AdminRoleAccess::all(['role_id'=>$role_id]);
                if($role_access_list) {
                    $role_access_list = collection($role_access_list)->toArray();
                    $static_list = [];
                    foreach ($role_access_list as $v) {
                        $static_list[]= $v['access_id'];
                    };
                    $role_access_list = $static_list;
                };
                // 需要删除的数据
                $del_access_ids = array_diff($role_access_list,$access_ids);
                 //需要添加的数据
                $add_access_ids = array_diff($access_ids,$role_access_list);
                if($del_access_ids){
                    AdminRoleAccess::where('role_id',$role_id)->where('access_id','IN',$del_access_ids)->delete();
                }
                if($add_access_ids){
                    $add_access_list = [];
                    foreach ($add_access_ids as $v) {
                        $add_access_list[]=[
                            'access_id' => $v,
                            'role_id' => $role_id
                        ];
                    };
                    $AdminRoleAccessModel = new AdminRoleAccess;
                    $AdminRoleAccessModel->saveAll($add_access_list);
                }
                return ['status'=>'1','msg'=>'更新成功!'];
            }else{
                return ['status'=>'0','msg'=>$valid_res];
            }
        }

    	$id = $this->request->param('id');
        if(!$id){
         $this->redirect('/admin/role/index');
        }
        //取出所有权限列表
        $list = AdminAccess::where('status',1)->order('id','desc')->select();
        //取出当前用户已分配的角色id列表
        $access_ids = AdminRoleAccess::where('role_id',$id)->select();
        //角色信息
        $info = AdminRole::get($id);

        $this->assign('list',$list);
        $this->assign('access_ids',$access_ids);
    	$this->assign('info',$info);
    	return $this->fetch('role/edit');
    }
    // 删除分类
    public function del()
    {
    	$id = $this->request->param('id');
        $user = AdminRole::get($id );
    	if($user->delete()){
    		return ['status'=>'1','msg'=>'删除成功'];
    	}else{
    		return ['status'=>'1','msg'=>$this->getError()];
    	}
    }
}
