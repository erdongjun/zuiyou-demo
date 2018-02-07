<?php
namespace app\home\controller;

use app\admin\model\Article as ArticleModel;
use app\admin\model\ArticleCate;



class Article extends Home
{
    public function index()
    {    
        $cate = new ArticleCate();
        $cate_list = $cate ->cateTree();
        $id = input('id');
        if( $id >0){
            $info = ArticleCate::get($id);
            $this->assign('info',$info);
            $list = ArticleModel::where(['status'=>1,'c_id'=>$id])->order('id desc')->paginate(20);
        }else {
            $list = ArticleModel::where(['status'=>1])->order('id desc')->paginate(20);
        }
        $this->assign('cate_list',$cate_list);
        $this->assign('page',$list->render());
        $this->assign('list',$list);
        return $this->fetch('article/index');
    }
    public function detail()
    {
        $id = input('id');
        if($id <=  0){
            $this->error('出错了');
        }

        $cate = new ArticleCate();
        $cate_list = $cate ->cateTree();

        ArticleModel::where('id',$id)->setInc('read_num');
        $info = ArticleModel::get($id);
        $this->assign('info',$info);
        $this->assign('cate_list',$cate_list);
        return $this->fetch('article/detail');
    }
}
