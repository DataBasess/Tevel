<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Cart extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Cart_model');
		$this->load->model('Product_model');
	}

	public function index()
	{	
		$this->data['title'] = 'Shopping Carts';

		if (!$this->cart->contents()){
			$this->data['message'] = '<p>คุณยังไม่เลือกแพ็คเกจ!</p>';
		}else{
			$this->data['message'] = $this->session->flashdata('message');
		}

		$this->load->view('cart', $this->data);
	}

	public function add($id)
	{	

		$data['products'] = $this->Product_model->view($id);

		foreach($data['products'] as $rs_cat)
			{   
				$image = $rs_cat['image']; 
				$idp = $rs_cat['id'];
				$name = $rs_cat['name'];
				$price = $rs_cat['price'];

				$this->load->model('Cart_model');
	
				$insert_room = array(	'image' => $image,
										'id' => $idp,
										'name' => $name,
										'price' => $price,
										'qty' => 1
									);		

				$this->cart->insert($insert_room);
			
				redirect('cart');
								
				
			}
		
	}
	
	function remove($rowid) {
		if ($rowid=="all"){
			$this->cart->destroy();
		}else{
			$data = array(
				'rowid'   => $rowid,
				'qty'     => 0
			);

			$this->cart->update($data);
		}
		
		redirect('cart');
	}	

	function update_cart(){
 		foreach($_POST['cart'] as $id => $cart)
		{			
			$price = $cart['price'];
			$amount = $price * $cart['qty'];
			
			$this->Cart_model->update_cart($cart['rowid'], $cart['qty'], $price, $amount);
		}
		
		redirect('cart');
	}	
}