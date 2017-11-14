<?php
namespace app\home\controller;


class Index extends Home
{
    public function index()
    {
        return $this->fetch();
    }
    public function test()
    {
        return $this->fetch();
    }
}
