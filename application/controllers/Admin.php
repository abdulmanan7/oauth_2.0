<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {
	public function __construct() {
		parent::__construct();
		//Do your magic here
	}
	public function index() {
		$this->load->model('user_model', 'users');
		$data['users'] = $this->users->get_all();
		print_r($data);die;
		$this->load->view('dashboard');
	}

}

/* End of file Admin.php */
/* Location: ./application/controllers/Admin.php */