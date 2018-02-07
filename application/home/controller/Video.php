<?php
namespace app\home\controller;

use app\admin\model\Video as VideoModel;
use app\admin\model\Cate;



class Video extends Home
{
    public function index()
    {    
        $cate = new Cate();
        $cate_list = $cate ->cateTree(2);
        $id = input('id');
        if( $id >0){
            $info = Cate::get($id);
            $this->assign('info',$info);
            $list = VideoModel::where(['status'=>1,'c_id'=>$id])->order('id desc')->paginate(20);
        }else {
            $list = VideoModel::where(['status'=>1])->order('id desc')->paginate(20);
        }
        $this->assign('cate_list',$cate_list);
        $this->assign('page',$list->render());
        $this->assign('list',$list);
        return $this->fetch('video/index');
    }
    public function detail()
    {
        $id = input('id');
        if($id <=  0){
            $this->error('出错了');
        }

        $cate = new Cate();
        $cate_list = $cate ->cateTree(2);

        VideoModel::where('id',$id)->setInc('read_num');
        $info = VideoModel::get($id);
        $this->assign('info',$info);
        $this->assign('cate_list',$cate_list);
        return $this->fetch('video/detail');
    }
}
