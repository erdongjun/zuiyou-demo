<?php

namespace app\admin\controller ;

use think\Controller; 

/**
* 
*/
class Admin extends Controller
{
	public function _initialize()
	{
		
		if(!session('admin_uid')){
			 $this->redirect('/public/index.php/admin/login/index');
		}
	}
}