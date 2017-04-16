<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Billing extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		
		$this->load->model('Billing_model');
		$this->load->model('Cart_model');
		$this->load->helper('form');
		$this->load->library('form_validation');
	}

	public function index()
	{	
		$this->data['title'] = 'Billing';
		
		$this->load->view('bill', $this->data);
	}
	
	public function save_order()
	{	

		$grand_total = 0;

		if ($cart = $this->cart->contents()):
			foreach ($cart as $item):
			$grand_total = $grand_total + $item['subtotal'];
			endforeach;
			endif;


		$customer = array(
			'name' 		=> $this->input->post('name'),
			'email' 	=> $this->input->post('email'),
			'address' 	=> $this->input->post('address'),
			'phone' 	=> $this->input->post('phone')
		);		

		$cust_id = $this->Billing_model->insert_customer($customer);

		$order = array(
			'order_date' 	=> date('Y-m-d H:i:s'),
			'total'			=> $grand_total,
			'user_id' 		=> 2,
			'fullname'		=> $this->input->post('name'),
			'email'			=> $this->input->post('email'),
			'phone'			=> $this->input->post('phone'),
			'address'		=> $this->input->post('address'),
			'district'		=> $this->input->post('district'),
			'province'		=> $this->input->post('province'),
			'postcode'		=> $this->input->post('postcode')
		);		

		$ord_id = $this->Billing_model->insert_order($order);
		
		if ($cart = $this->cart->contents()):
			foreach ($cart as $item):
				$order_detail = array(
					'order_id' 		=> $ord_id,
					'product_id' 	=> $item['id'],
					'quantity' 		=> $item['qty'],
					'price' 		=> $item['price']
				);		

				$cust_id = $this->Billing_model->insert_order_detail($order_detail);
			endforeach;
		endif;
		
		$this->load->view("Thank");
	}
}