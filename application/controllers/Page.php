<?php
/* 
 * Generated by CRUDigniter v2.3 Beta 
 * www.crudigniter.com
 */
 
class Page extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('Page_model');
    } 

    /*
     * Listing of pages
     */
    function index()
    {
        $data['pages'] = $this->Page_model->get_all_pages();

        $this->load->view('page/index',$data);
    }

    /*
     * Adding a new page
     */
    function add()
    {   
        if(isset($_POST) && count($_POST) > 0)     
        {   
            $params = array(
				'title' => $this->input->post('title'),
				'detail' => $this->input->post('detail'),
				'created' => $this->input->post('created'),
				'short_detail' => $this->input->post('short_detail'),
				'sort_item' => $this->input->post('sort_item'),
            );
            
            $page_id = $this->Page_model->add_page($params);
            redirect('page/index');
        }
        else
        {
            $this->load->view('page/add');
        }
    }  

    /*
     * Editing a page
     */
    function edit($id)
    {   
        // check if the page exists before trying to edit it
        $page = $this->Page_model->get_page($id);
        
        if(isset($page['id']))
        {
            if(isset($_POST) && count($_POST) > 0)     
            {   
                $params = array(
					'title' => $this->input->post('title'),
					'detail' => $this->input->post('detail'),
					'created' => $this->input->post('created'),
					'short_detail' => $this->input->post('short_detail'),
					'sort_item' => $this->input->post('sort_item'),
                );

                $this->Page_model->update_page($id,$params);            
                redirect('page/index');
            }
            else
            {   
                $data['page'] = $this->Page_model->get_page($id);
    
                $this->load->view('page/edit',$data);
            }
        }
        else
            show_error('The page you are trying to edit does not exist.');
    } 

    /*
     * Deleting page
     */
    function remove($id)
    {
        $page = $this->Page_model->get_page($id);

        // check if the page exists before trying to delete it
        if(isset($page['id']))
        {
            $this->Page_model->delete_page($id);
            redirect('page/index');
        }
        else
            show_error('The page you are trying to delete does not exist.');
    }
    
}
