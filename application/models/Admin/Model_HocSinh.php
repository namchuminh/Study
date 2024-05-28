<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_HocSinh extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}

	public function checkNumber()
	{
		$sql = "SELECT * FROM hocsinh";
		$result = $this->db->query($sql);
		return $result->num_rows();
	}

	public function getAll($start = 0, $end = 10){
		$sql = "SELECT * FROM hocsinh ORDER BY mahocsinh DESC LIMIT ?, ?";
		$result = $this->db->query($sql, array($start, $end));
		return $result->result_array();
	}

	public function getById($mahocsinh){
		$sql = "SELECT * FROM hocsinh WHERE mahocsinh = ?";
		$result = $this->db->query($sql, array($mahocsinh));
		return $result->result_array();
	}

	public function ban($trangthai,$mahocsinh){
		$sql = "UPDATE hocsinh SET TrangThai = ? WHERE mahocsinh = ?";
		$result = $this->db->query($sql, array($trangthai, $mahocsinh));
		return $result;
	}

}

/* End of file Model_hocsinh.php */
/* Location: ./application/models/Model_hocsinh.php */