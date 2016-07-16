<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_model extends CI_Model {

	public function _key_exists($key) {
		return $this->db
			->where("app_name", $key)
			->count_all_results("users") > 0;
	}
	public function add($data) {
		$this->db->insert('users', $data);
		return $this->db->insert_id();
	}
	public function get_all() {
		return $this->db->select('*')
			->from('users')
			->join('keys', 'users.app_key = keys.key')
			->get()
			->result_array();
	}
}

/* End of file User_model.php */
/* Location: ./application/models/User_model.php */