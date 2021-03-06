<?php


class Upload extends CI_Controller {

	function __construct()
   {
        parent::__construct();
        $this->load->helper('form');
    	$this->load->helper('url');

   }
  
  //if index is loaded
	function index() {
		//load the helper library
		
		//Set the message for the first time
		$data = array('msg' => "Upload File");
    
    	$data['upload_data'] = '';
    
		//load the view/upload.php with $data
		$this->load->view('upload', $data);
    
		
	}

	function upload_it() {
		//load the helper
		

		//Configure
		//set the path where the files uploaded will be copied. NOTE if using linux, set the folder to permission 777
		$config['upload_path'] = 'upload\product';
		
    // set the filter image types
		$config['allowed_types'] = 'gif|jpg|png';
		
		//load the upload library
		$this->load->library('upload', $config);
    
    	$this->upload->initialize($config);
    
    	$this->upload->set_allowed_types('*');

		$data['upload_data'] = '';
    
		//if not successful, set the error message
		if (!$this->upload->do_upload('userfile')) {
			$data = array('msg' => $this->upload->display_errors());

		} else { //else, set the success message
			$data = array('msg' => "Upload success!");
      
      $data['upload_data'] = $this->upload->data();

		}
		
		//load the view/upload.php
		$this->load->view('upload', $data);
		
	}

}