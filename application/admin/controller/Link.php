<?php
namespace app\admin\controller;

use app\admin\model\Cate;
use app\admin\model\Link as LinkModel;

/**
 * 友链模块管理
 */

class Link extends Base
{
     // 友链列表
    public function index()
    {
        $list = LinkModel::order('id desc')->paginate(20);
        // dump($list);exit();
        $this->assign('page',$list->render());
        $this->assign('list',$list);

        return $this->fetch('link/index');
    }
    // 添加友链
    public function add()
    {   
        if($this->request->isPost()){
            // 验证
            $valid_res = $this->validate($_POST, 'Link');
            if($valid_res !== true) {
                return ['status'=>'0','msg'=>$valid_res];
            }

            $link = new LinkModel($_POST);

            $data_res = $link->allowField(true)->save();
            if (!$data_res) {
                return ['status'=>'0','msg'=>$this->getError()];
            }
            return ['status'=>'1','msg'=>'添加成功'];
        }

        $cate = new Cate();
        $list = $cate ->cateTree(1);
        $this->assign('list',$list);

        return $this->fetch('link/add');
    }

    
    // 编辑友链
    public function edit()
    {

        if($this->request->isPost()){


            if(!isset($_POST['status'])){
                
                $result = $this->validate($_POST, 'Link.edit');

            }else{
                $result = true;
            }

            if( $result === true){

                if(LinkModel::update($_POST)){
                    return ['status'=>'1','msg'=>'更新成功'];
                }else{
                    return ['status'=>'0','msg'=>$this->getError()];
                }
            }else{
                return ['status'=>'0','msg'=>$result];
            }
            
        }

        $cate = new Cate();
        $list = $cate ->cateTree(1);
        $id = $this->request->param('id');
        $info = LinkModel::get($id);
        $this->assign('info',$info);
        $this->assign('list',$list);
        return $this->fetch('link/edit');
    }
    // 删除友链
    public function del()
    {
        $id = $this->request->param('id');
        $user = LinkModel::get($id);
        if($user->delete()){
            return ['status'=>'1','msg'=>'删除成功'];
        }else{
            return ['status'=>'1','msg'=>$this->getError()];
        }
    }



    // 分类列表
    public function cate_index()
    {
        $cate = new Cate();
        $list = $cate ->cateTree(1);
        $this->assign('list',$list);
        return $this->fetch('link/cate_index');
    }
    // 添加分类
    public function cate_add()

    {   
        if($this->request->isPost()){
            // 验证
            $valid_res = $this->validate($_POST, 'Cate');
            if($valid_res !== true) {
                return ['status'=>'0','msg'=>$valid_res];
            }
            $CateModel = new Cate($_POST);

            $data_res = $CateModel->allowField(true)->save();

            if (!$data_res) {
                return ['status'=>'0','msg'=>$this->getError()];
            }
            return ['status'=>'1','msg'=>'添加成功'];
        }
        $cate = new Cate();
        $list = $cate ->cateTree(1);
        $this->assign('list',$list);

        return $this->fetch('link/cate_add');
    }
    // 编辑分类

    public function cate_edit()
    {

        $cate = new Cate();

        $list = $cate ->cateTree(1);
        $id = $this->request->param('id');
        $data = Cate::get($id);
        $this->assign('list',$list);
        $this->assign('info',$data);

        if($this->request->isPost()){
            $result = $this->validate($_POST, 'Cate.update');

            if( $result === true){
                    if(Cate::update($_POST)){
                        return ['status'=>'1','msg'=>'更新成功'];
                    }else{
                        return ['status'=>'0','msg'=>$this->getError()];
                    }
            }else{
                return ['status'=>'0','msg'=>$result];
            }
            
        }
        return $this->fetch('link/cate_edit');
    }
    // 删除分类
    public function cate_del()
    {
        $id = $this->request->param('id');
        $list = Cate::where(['type'=>1,'parent_id'=>$id])->select();
        $linklist = LinkModel::where(['c_id'=>$id])->select();
        if($list){
            return ['status'=>'0','msg'=>'该分类下存在子分类,不能被删除!'];
        }
        if($linklist){
            return ['status'=>'0','msg'=>'该分类下存在友链,不能被删除!'];
        }

        $user = Cate::get($id);

        if($user->delete()){
            return ['status'=>'1','msg'=>'删除成功'];
        }else{
            return ['status'=>'1','msg'=>$this->getError()];
        }
    }
    //采集发布页
    public function cadd()
    {   
        if($this->request->isPost()){
            // 验证
            $valid_res = $this->validate($_POST, 'Link');
            if($valid_res !== true) {
                return ['status'=>'0','msg'=>$valid_res];
            }
            $link = new LinkModel($_POST);

            $data_res = $link->allowField(true)->save();

            if (!$data_res) {
                return ['status'=>'0','msg'=>'出错了'];
            }
            return ['status'=>'1','msg'=>'添加成功'];
        }

        $cate = new Cate();
        $list = $cate ->cateTree(1);
        $this->assign('list',$list);

        return $this->fetch('link/cadd');
    }


}
