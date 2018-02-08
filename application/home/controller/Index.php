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
        $this->assign('cate_list',$cates);
        return $this->fetch('index/link');
    }

    public function test(){
        return $this->fetch('index/test');
    }
}
