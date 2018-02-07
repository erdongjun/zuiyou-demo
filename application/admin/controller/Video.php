<?php
namespace app\admin\controller;

use app\admin\model\Cate;
use app\admin\model\Video as VideoModel;

/**
 * 视频模块管理
 */

class Video extends Base
{
     // 视频列表
    public function index()
    {
        $list = VideoModel::order('id desc')->paginate(20);
        $this->assign('page',$list->render());
        $this->assign('list',$list);

        return $this->fetch('video/index');
    }
    // 添加视频
    public function add()
    {   
        if($this->request->isPost()){
            // 验证
            $valid_res = $this->validate($_POST, 'Video');
            if($valid_res !== true) {
                return ['status'=>'0','msg'=>$valid_res];
            }

            $link = new VideoModel($_POST);

            $data_res = $link->allowField(true)->save();
            if (!$data_res) {
                return ['status'=>'0','msg'=>$this->getError()];
            }
            return ['status'=>'1','msg'=>'添加成功'];
        }

        $cate = new Cate();
        $list = $cate ->cateTree(2);
        $this->assign('list',$list);

        return $this->fetch('video/add');
    }

    
    // 编辑视频
    public function edit()
    {

        if($this->request->isPost()){

            if(!isset($_POST['status'])){
                
                $result = $this->validate($_POST, 'Video.edit');

            }else{
                $result = true;
            }

            if( $result === true){

                if(VideoModel::update($_POST)){
                    return ['status'=>'1','msg'=>'更新成功'];
                }else{
                    return ['status'=>'0','msg'=>$this->getError()];
                }
            }else{
                return ['status'=>'0','msg'=>$result];
            }
            
        }

        $cate = new Cate();
        $list = $cate ->cateTree(2);
        $id = $this->request->param('id');
        $info = VideoModel::get($id);
        $this->assign('info',$info);
        $this->assign('list',$list);
        return $this->fetch('video/edit');
    }
    // 删除视频
    public function del()
    {
        $id = $this->request->param('id');
        $user = VideoModel::get($id);
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
        $list = $cate ->cateTree(2);
        $this->assign('list',$list);
        return $this->fetch('video/cate_index');
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
        $list = $cate ->cateTree(2);
        $this->assign('list',$list);

        return $this->fetch('video/cate_add');
    }
    // 编辑分类

    public function cate_edit()
    {

        $cate = new Cate();

        $list = $cate ->cateTree(2);
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
        return $this->fetch('video/cate_edit');
    }
    // 删除分类
    public function cate_del()
    {
        $id = $this->request->param('id');
        $list = Cate::where(['type'=>2,'parent_id'=>$id])->select();
        $videolist = VideoModel::where(['c_id'=>$id])->select();
        if($list){
            return ['status'=>'0','msg'=>'该分类下存在子分类,不能被删除!'];
        }
        if($videolist){
            return ['status'=>'0','msg'=>'该分类下存在视频,不能被删除!'];
        }

        $user = Cate::get($id);

        if($user->delete()){
            return ['status'=>'1','msg'=>'删除成功'];
        }else{
            return ['status'=>'1','msg'=>$this->getError()];
        }
    }
    //视频采集发布页
    public function cadd()
    {   
        if($this->request->isPost()){
            // 验证
            $valid_res = $this->validate($_POST, 'Video');
            if($valid_res !== true) {
                $this->error('出错了');

            }
            $link = new VideoModel($_POST);

            $data_res = $link->allowField(true)->save();

            if (!$data_res) {
                $this->error('出错了');

            }
            $this->success('新增成功');
            
        }

        $cate = new Cate();
        $list = $cate ->cateTree(2);
        $this->assign('list',$list);

        return $this->fetch('video/cadd');
    }

}
