<?php
namespace app\admin\controller;


use app\admin\model\User as UserModel;
use think\Request;
use think\Validate;


class User extends Base
{
	// 用户列表
    public function index()
    {
    	$list = UserModel::order('id asc')->paginate(10);
        $this->assign('page',$list->render());
        $this->assign('list',$list);
        return $this->fetch('user/index');
    }
    // 添加用户
    public function add()
    {	
        if($this->request->isPost()){
            // 验证
            $valid_res = $this->validate($_POST, 'User.add');
            if($valid_res !== true) {
                return ['status'=>'0','msg'=>$valid_res];
            }
            // $UserModel = new User($_POST);
            // $data_res = $UserModel->allowField(true)->save();
            $user = UserModel::create([
                'name'  =>  trim($_POST['name']),
                'email'  =>  trim($_POST['email']),
                'mobile'  =>  trim($_POST['mobile']),
                'password'  =>  trim($_POST['password']),
            ]);
            if (!$user) {
                return ['status'=>'0','msg'=>$this->getError()];
            }
            return ['status'=>'1','msg'=>'添加成功'];
        }
        //取出所有的角色列表
        return $this->fetch('user/add');
    }
    // 编辑用户

    public function edit()
    {
    	if($this->request->isPost()){
            $uid = $_POST['id'];
            $valid_res = $this->validate($_POST, 'User.edit');
            if($valid_res === true){
                // $data_res = UserModel::update($_POST);
                $user = new UserModel();
                // 过滤post数组中的非数据表字段数据
                $data_res = $user->allowField(true)->save($_POST,['id'=>$uid]);

                if(!$data_res){
                     return ['status'=>'0','msg'=>$this->getError()];
                };
                return ['status'=>'1','msg'=>'更新成功!'];
            }else{
                return ['status'=>'0','msg'=>$valid_res];
            }
        }

        $id = $this->request->param('id');
        if(!$id){
         $this->redirect('/admin/user/index');
        }
        $info = UserModel::get($id);
        $this->assign('info',$info);
        return $this->fetch('user/edit');
    }
    // 删除用户

    public function del()
    {
    	$id = $this->request->param('id');
        $user = UserModel::get($id);
        
        if($user->delete()){
            return ['status'=>'1','msg'=>'删除成功'];
        }else{
            return ['status'=>'1','msg'=>$this->getError()];
        }
    }
}
