<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Clients extends CI_Controller {
	protected $server = "";
	//protected $api_key = "b35f83d49cf0585c6a104476b9dc3694eee1ec4e";
	protected $api_key = "ddd4dcf068d26293ad75fbdde868acbce3328289";
	public function __construct() {
		parent::__construct();
		$this->server = base_url('api');
	}
	public function index() {
		$this->load->view('get_access_token');
	}
	public function create_key() {
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
	public function request_key() {
		$this->load->library('rest', array(
			'server' => $this->server,
			'api_key' => 'cw8s4csggkksos8gcgc000w00cwk0s0sok074s0g',
			'api_name' => 'X-API-KEY',
		));
		$app_key = $this->rest->put('key/create');
		if (isset($app_key->status) && $app_key->status == 1) {

			$this->load->view('get_access_token', $app_key);
		}
		// redirect('clients', 'refresh');
		// print_r($app_key);die;
		// $secret_key = $this->customapi_lib->createHmacsha($app_key['key'], 'sha1');

		// if (isset($app_key['key'])) {
		// 	$data = array(
		// 		'app_key' => $app_key['key'],
		// 		'secret_key' => $secret_key,
		// 	);
		// 	$this->load->model('user_model');
		// 	$this->userId = $this->user_model->add($data);

		// }
		// $result_keys = array('app_key' => $app_key['key'], 'secret_key' => $secret_key);
		// print_r($result_keys);
		// die;

	}
	public function test() {
		$app_key = $this->input->get('app_key');
		$format = $this->input->get('format');
		$this->load->library('rest', array(
			'server' => $this->server,
			'api_key' => $api_key,
			'api_name' => 'X-API-KEY',
		));
		$user = $this->rest->get('api/example/usera', NULL, $format);
		// $this->rest->info($created_key);
		print_r($user);
		die;
	}
}
