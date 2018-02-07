<?php
namespace app\home\controller;

use app\admin\model\Article;
use app\admin\model\Video;


// 友链
use app\admin\model\Cate;
use app\admin\model\Link;




class Index extends Home
{
    public function index()
    {   
        $article_list = Article::where('status',1)->order('update_time desc')->limit(20)->select();
        $video_list = Video::where('status',1)->order('update_time desc')->limit(20)->select();
        $this->assign('article_list',$article_list);
        $this->assign('video_list',$video_list);
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
        $list = Article::where(['status'=>1,'c_id'=>$id])->order('id desc')->paginate(20);
        $this->assign('page',$list->render());
        $this->assign('list',$list);
        $this->assign('info',$info);
        return $this->fetch('index/article');
    }
    public function detail()
    {
        $id = $this->request->param('id');
        Article::where('id',$id)->setInc('read_num');
        $info = Article::get($id);
        $this->assign('info',$info);
        
        return $this->fetch('index/detail');
    }
    // 网址导航
    public function link()
    {
       $cates = Cate::all([
                'parent_id' => 0,
                'type' => 1
            ]);



       $links = Link::all(['status'=>1]);

       foreach ($cates as $cate) {
            $list = [];
            foreach ($links as $link) {
                if($cate['id'] == $link['c_id']){
                    $list[]  = $link;
                }
            }

            $cate['link_list'] = $list;
       }
       // dump($cates);exit();


        // $cate_list = $cate ->cateTree(1);
        $this->assign('cate_list',$cates);
        return $this->fetch('index/link');
    }

    public function test(){
        return $this->fetch('index/test');
    }
}
