<?php
namespace app\home\controller;

use app\admin\model\Article;
use app\admin\model\ArticleCate;



class Index extends Home
{
    public function index()
    {   
        $cate = new ArticleCate();
        $cate_list = $cate ->cateTree();
        $list = Article::where('status',1)->order('id desc')->limit(10)->select();
        $this->assign('list',$list);
        $this->assign('cate_list',$cate_list);
        return $this->fetch('index/index');
    }
    public function cate()
    {
        $cate = new ArticleCate();
        $cate_list = $cate ->cateTree();
        $this->assign('cate_list',$cate_list);
        return $this->fetch('index/cate');
    }
    public function article()
    {
        $id = $this->request->param('id');
        $info = ArticleCate::get($id);
        $list = Article::where(['status'=>1,'c_id'=>$id])->order('id desc')->paginate(10);
        $this->assign('page',$list->render());
        $this->assign('list',$list);
        $this->assign('info',$info);
        return $this->fetch('index/article');
    }
    public function detail()
    {
        $id = $this->request->param('id');
        $info = Article::get($id);
        $this->assign('info',$info);
        
        return $this->fetch('index/detail');
    }
}
