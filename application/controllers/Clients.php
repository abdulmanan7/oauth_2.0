<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Clients extends CI_Controller {
	protected $server = "";
	protected $api_key = "ddd4dcf068d26293ad75fbdde868acbce3328289";
	public function __construct() {
		parent::__construct();
		$this->server = base_url('api');
		$this->load->model('ion_auth_model', 'ion_auth');
	}
	public function index() {
		$this->load->view('get_access_token', array('status' => 0));
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
		$this->form_validation->set_rules('app_name', 'App Name', 'required');
		$this->form_validation->set_rules('username', 'User Name', 'required');
		$this->form_validation->set_rules('password', 'Password', 'required');

		if ($this->form_validation->run() == FALSE) {
			//failer
			$data['msg'] = validation_errors();
			$data['status'] = 0;
			$this->load->view('get_access_token', $data);
		} else {
			$app_name = $this->input->post('app_name');
			$username = $this->input->post('username');
			$password = $this->input->post('password');
			$app_key = "";
			$secret_key = "";
			$status = 1;
			$message = "";
			$user = $this->verify_login($username, $password);
			// print_r($user);die;
			if (isset($user->api_key) && ($user->api_key == NULL || $user->api_key == "")) {
				if (!$this->ion_auth->_app_exists($app_name)) {
					if ($user->id > 0) {
						$this->load->library('rest', array(
							'server' => $this->server,
							'api_key' => 'cw8s4csggkksos8gcgc000w00cwk0s0sok074s0g',
							'api_name' => 'X-API-KEY',
						));
						$app_key = $this->rest->put('key/create');
						if ($app_key->status == 1) {
							$secret_key = md5($app_key->key);
							$data = array(
								'user_id' => $user->id,
								'api_key' => $app_key->key,
								'app_name' => $app_name,
								'secret_key' => $secret_key,
							);
							$effected_rows = $this->ion_auth->update_user($data);
							if ($effected_rows > 0) {
								$app_key = $app_key->key;
								$secret_key = $secret_key;
								$status = 1;
								$message = "App register successfully";
							} else {
								$this->rest->delete('key/index', array('key' => $app_key->key));
								$message = "opps an error occur while adding key try again !";
							}
						} else {
							$message = "Key cannot be created right now";
						}
					} else {
						$message = "Incorrect Username & password provided";
					}
				} else {
					$message = "App name already register please try a unique app name";
				}
			} else {
				if ($user) {
					$data = array(
						"app_key" => $user->api_key,
						"secret_key" => $user->secret_key,
						"status" => 1,
						"message" => "Api key found for the user");
					$this->load->view('get_access_token', $data);
				} else {
					$data = array(
						"app_key" => "",
						"secret_key" => "",
						"status" => 0,
						"msg" => "Incorrect login detail provided");
					$this->load->view('get_access_token', $data);
				}
				return;
			}
		}
		// redirect('clients', 'refresh');
	}
	public function test() {
		$app_key = $this->input->get('app_key');
		$format = $this->input->get('format');
		$this->load->library('rest', array(
			'server' => $this->server,
			'api_key' => $app_key,
			'api_name' => 'X-API-KEY',
		));
		$user = $this->rest->get('example/users', array('id' => 1), "json");
		print_r(json_encode($user));
		die;
	}
	private function verify_login($username, $password) {
		$user = $this->ion_auth->is_login($username, $password);
		return isset($user->id) ? $user : 0;
	}
}
