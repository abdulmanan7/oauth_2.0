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
	public function update_user($data) {
		$this->db->where('user_id', $data['user_id']);
		$this->db->set('api_key', $data['api_key']);
		$this->db->set('secret_key', $data['secret_key']);
		$this->db->set('app_name', $data['app_name']);
		$this->db->update('users');
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