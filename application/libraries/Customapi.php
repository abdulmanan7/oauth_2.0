<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Customapi {
	protected $ci;
	function __construct() {
		// Construct our parent class
		$this->ci = &get_instance();
	}
	public function validate_user($id, $sec_key) {
		$decrypted = $this->ci->encrypt->decode($sec_key, $this->encrypted_key . $id);
		if ($decrypted == $id) {
			return TRUE;
		} else {
			return FALSE;
		}

	}
	public function utcTimestamp() {
		// date_default_timezone_set("UTC");
		// return date("Y-m-d H:i:s", time());
		// $date = new DateTime();
		// return $date->getTimestamp();
		return time();
	}
	public function createHmacsha($str = '', $tec = 'SHA256', $sec_key = NULL) {
		// echo $enc_string = hash_hmac($tec, $str, $this->bank_sec_key);
		if ($sec_key) {
			$enc_string = hash_hmac($tec, $str, $sec_key, true);
			return base64_encode($enc_string);
		}
		$enc_string = hash_hmac($tec, $str, $this->bank_sec_key, true);
		return base64_encode($enc_string);
	}
}