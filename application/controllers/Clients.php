<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Clients extends CI_Controller {

	public function index()
	{
		$this->load->helper('url');

		$this->load->view('get_access_token');
	}
	function native_curl($new_name, $new_email)
	{
		$username = 'admin';
		$password = '1234';

    // Alternative JSON version
    // $url = 'http://twitter.com/statuses/update.json';
    // Set up and execute the curl process
		$curl_handle = curl_init();
		curl_setopt($curl_handle, CURLOPT_URL, 'http://localhost/restserver/index.php/example_api/user/id/1/format/json');
		curl_setopt($curl_handle, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($curl_handle, CURLOPT_POST, 1);
		curl_setopt($curl_handle, CURLOPT_HTTPHEADER,  $header_data);
		curl_setopt($curl_handle, CURLOPT_POSTFIELDS, array(
			'name' => $new_name,
			'email' => $new_email
			));

    // Optional, delete this line if your API is open
		curl_setopt($curl_handle, CURLOPT_USERPWD, $username . ':' . $password);

		$buffer = curl_exec($curl_handle);
		curl_close($curl_handle);

		$result = json_decode($buffer);

		if(isset($result->status) && $result->status == 'success')
		{
			echo 'User has been updated.';
		}

		else
		{
			echo 'Something has gone wrong';
		}
	}
}
