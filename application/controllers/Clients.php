<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Clients extends CI_Controller {

	public function index()
	{
		$this->load->helper('url');

		$this->load->view('get_access_token');
	}
}
