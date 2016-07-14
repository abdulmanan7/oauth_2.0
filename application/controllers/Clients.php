<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Clients extends CI_Controller {
	protected $server = "http://ercasng.com:8080/fctwb/customapi/";
	//protected $api_key = "b35f83d49cf0585c6a104476b9dc3694eee1ec4e";
	protected $api_key = "ddd4dcf068d26293ad75fbdde868acbce3328289";

	public function index()
	{
		$this->load->helper('url');

		$this->load->view('get_access_token');
	}
	public function request_key() {
		$utc = time();
		$header_data = array(
			"Accept: application/json",
			"X-API-KEY:" . $this->api_key,
		);
		$ch = curl_init();
		$curlOpts = array(
			CURLOPT_URL => $this->server . 'key/create',
			CURLOPT_RETURNTRANSFER => true,
			CURLOPT_HTTPHEADER => $header_data,
			CURLOPT_FOLLOWLOCATION => true,
			CURLOPT_PUT => true,

			CURLOPT_HEADER => 1,
		);
		curl_setopt_array($ch, $curlOpts);
		$answer = curl_exec($ch);
		$header_size = curl_getinfo($ch, CURLINFO_HEADER_SIZE);

		$info = curl_getinfo($ch);
		// $headers = $this->get_headers_from_curl_response($answer);

		// If there was an error, show it
		if (curl_error($ch)) {
			die(curl_error($ch));
		}

		curl_close($ch);

		echo "<pre>";
		echo $answer;
	}
}
