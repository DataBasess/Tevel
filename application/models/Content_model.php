<?php
/* 
 * Generated by CRUDigniter v2.3 Beta 
 * www.crudigniter.com
 */
 
class Content_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    
    /*
     * Get content by id
     */
    function get_content($id)
    {
        return $this->db->get_where('contents',array('id'=>$id))->row_array();
    }
    
    /*
     * Get all contents
     */
    function get_all_contents()
    {
        return $this->db->get('contents')->result_array();
    }
    
    /*
     * function to add new content
     */
    function add_content($params)
    {
        $this->db->insert('contents',$params);
        return $this->db->insert_id();
    }
    
    /*
     * function to update content
     */
    function update_content($id,$params)
    {
        $this->db->where('id',$id);
        $response = $this->db->update('contents',$params);
        if($response)
        {
            return "content updated successfully";
        }
        else
        {
            return "Error occuring while updating content";
        }
    }
    
    /*
     * function to delete content
     */
    function delete_content($id)
    {
        $response = $this->db->delete('contents',array('id'=>$id));
        if($response)
        {
            return "content deleted successfully";
        }
        else
        {
            return "Error occuring while deleting content";
        }
    }
}
