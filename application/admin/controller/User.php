<?php
namespace app\admin\controller;


use app\admin\model\AdminUser;
use app\admin\model\AdminRole;
use app\admin\model\AdminUserRole;

use think\Request;
use think\Validate;


class User extends Base
{
	// 管理员列表
    public function index()
    {
    	$list = AdminUser::order('id asc')->paginate(10);
        $this->assign('page',$list->render());
        $this->assign('list',$list);
        return $this->fetch('user/index');
    }
    // 添加管理员
    public function add()
    {	
        if($this->request->isPost()){
            // 验证
            $valid_res = $this->validate($_POST, 'AdminUser.add');
            if($valid_res !== true) {
                return ['status'=>'0','msg'=>$valid_res];
            }
            // $AdminUserModel = new AdminUser($_POST);
            // $data_res = $AdminUserModel->allowField(true)->save();
            $user = AdminUser::create([
                'name'  =>  trim($_POST['name']),
                'email'  =>  trim($_POST['email']),
                'mobile'  =>  trim($_POST['mobile']),
                'password'  =>  trim($_POST['password']),
            ]);
            if (!$user) {
                return ['status'=>'0','msg'=>$this->getError()];
            }
            //管理员添加成功 接下来保存用户与角色的对应关系
            $role_ids = isset($_POST['role_ids'])?$_POST['role_ids']:[];
            $uid = $user->id;
            if($role_ids){
                //关系存在 保存对应关系表
                $user_role_list = [];
                foreach ($role_ids as $v) {
                    $user_role_list[]=[
                        'uid' => $uid,
                        'role_id' => $v
                    ];
                };
                $AdminUserRoleModel = new AdminUserRole;
                $AdminUserRoleModel->saveAll($user_role_list);
            }
            return ['status'=>'1','msg'=>'添加成功'];
        }
        //取出所有的角色列表
        $list = AdminRole::where('status',1)->order('id','desc')->select();
        $this->assign('list',$list);
        return $this->fetch('user/add');
    }
    // 编辑管理员

    public function edit()
    {
    	if($this->request->isPost()){
            $uid = $_POST['id'];
            $valid_res = $this->validate($_POST, 'AdminUser.edit');
            if($valid_res === true){
                // $data_res = AdminUser::update($_POST);
                $user = new AdminUser();
                // 过滤post数组中的非数据表字段数据
                $data_res = $user->allowField(true)->save($_POST,['id'=>$uid]);

                if(!$data_res){
                     return ['status'=>'0','msg'=>$this->getError()];
                };

                // 管理员信息更新成功 接下来保存用户与角色的对应关系
                $role_ids = isset($_POST['role_ids'])?$_POST['role_ids']:[];
                 // dump($role_ids );
                 //    exit();

                // 取出当前用户角色关系列表
                $user_role_list = AdminUserRole::all(['uid'=>$uid]);

                if($user_role_list) {
                    $user_role_list = collection($user_role_list)->toArray();
                    $static_list = [];
                    foreach ($user_role_list as $v) {
                        $static_list[]= $v['role_id'];
                    };
                    $user_role_list = $static_list;
                };

                // 需要删除的数据
                $del_role_ids = array_diff($user_role_list,$role_ids);
                 //需要添加的数据
                $add_role_ids = array_diff($role_ids,$user_role_list);
                // dump($del_role_ids);
                // dump($add_role_ids);
                // exit();
                if($del_role_ids){
                    AdminUserRole::where('uid',$uid)->where('role_id','IN',$del_role_ids)->delete();
                }
                if($add_role_ids){
                    $add_role_list = [];
                    foreach ($add_role_ids as $v) {
                        $add_role_list[]=[
                            'uid' => $uid,
                            'role_id' => $v
                        ];
                    };
                    $AdminUserRoleModel = new AdminUserRole;
                    $user_role_res = $AdminUserRoleModel->saveAll($add_role_list);
                }
                return ['status'=>'1','msg'=>'更新成功!'];
            }else{
                return ['status'=>'0','msg'=>$valid_res];
            }
        }

        $id = $this->request->param('id');
        if(!$id){
         $this->redirect('/admin/user/index');
        }
        $info = AdminUser::get($id);
        //取出所有的角色列表
        $list = AdminRole::where('status',1)->order('id','desc')->select();
        //取出当前用户已分配的角色id列表
        $role_ids = AdminUserRole::where('uid',$id)->select();

        $this->assign('info',$info);
        $this->assign('list',$list);
        $this->assign('role_ids',$role_ids);

        return $this->fetch('user/edit');
    }
    // 删除管理员

    public function del()
    {
    	$id = $this->request->param('id');
        $user = AdminUser::get($id);
        // dump($user->is_admin);exit();
        if( $user->is_admin ===1 ){
            return ['status'=>'0','msg'=>'超级管理员不可以删除'];
        }
        if($user->delete()){
            return ['status'=>'1','msg'=>'删除成功'];
        }else{
            return ['status'=>'1','msg'=>$this->getError()];
        }
    }
}
