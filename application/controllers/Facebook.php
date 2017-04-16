<?php

 
class Facebook extends CI_Controller
{

	private $fb;
    public function __construct()
    {
        parent::__construct();
        
        $this->load->library('facebooksdk');
        $this->fb = $this->facebooksdk;

    } 

    
    public function login()
    {
        $cb  	= "http://localhost/Tevel/facebook/callback";
        $url	= $this->fb->getLoginUrl($cb);
        echo "<a href='$url'> Login With Facebook </a>";
    }

    public function callback()
    {
        $act  	= $this->fb->getAccessToken();
        $data	= $this->fb->getUserData($act);
        print_r($data);
    }

  }

  ?>