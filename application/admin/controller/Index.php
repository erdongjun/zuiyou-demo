<?php
namespace app\admin\controller;


use  app\admin\model\AdminUser as AdminUser;

require_once VENDOR_PATH.'/qiniu/php-sdk/autoload.php';

use Qiniu\Auth as Auth;
use Qiniu\Storage\BucketManager;
use Qiniu\Storage\UploadManager;



class Index extends Base
{
    public function index()
    {
    	$list = AdminUser::where([])->select();

    	$this->assign('list',$list);
    	 $this->assign('name','ThinkPHP');
        $this->assign('uid','thinkphp@qq.com');

        return $this->fetch();
    }
     /**
     * 图片上传
     * @return String 图片的完整URL
     */
    public function upload()
    {

       // 需要填写你的 Access Key 和 Secret Key
        $accessKey = config('qiniu.accesskey');
        $secretKey = config('qiniu.secretkey');
        // 要上传的空间
        $bucket = config('qiniu.bucket');
        $domain = config('qiniu.domain');
        // 构建鉴权对象
        $auth = new Auth($accessKey, $secretKey);
        $token = $auth->uploadToken($bucket);
        if($this->request->isPost()){
            $file = request()->file('image');
            // 要上传图片的本地路径
            $filePath = $file->getInfo('tmp_name');
            $ext = pathinfo($file->getInfo('name'), PATHINFO_EXTENSION);  //后缀
            //获取当前控制器名称
            // 上传到七牛后保存的文件名
            $key ='imgs/'.substr(md5($file->getRealPath()) , 0, 5). date('YmdHis') . rand(0, 9999) . '.' . $ext;

            // 初始化 UploadManager 对象并进行文件的上传。
            $uploadMgr = new UploadManager();
            // 调用 UploadManager 的 putFile 方法进行文件的上传。
            list($ret, $err) = $uploadMgr->putFile($token, $key, $filePath);
            if ($err !== null) {
                return ["err"=>1,"msg"=>$err,"data"=>""];
            } else {
                //返回图片的完整URL
                return json(["err"=>0,"msg"=>"上传完成","data"=>$domain.$ret['key']]);
            }
        }


        $this->assign('token',$token);
        return $this->fetch();
    }
}
