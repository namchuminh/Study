<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_CaNhan extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}


	public function getById($magiaovien){
		$sql = "SELECT * FROM giaovien WHERE MaGiaoVien = ? AND TrangThai = 1";
		$result = $this->db->query($sql, array($magiaovien));
		return $result->result_array();
	}

	public function update($tengiaovien,$sodienthoai,$email,$matkhau,$magiaovien){
		$sql = "UPDATE giaovien SET TenGiaoVien =?, SoDienThoai=?, Email=?, MatKhau=? WHERE MaGiaoVien = ? AND TrangThai = 1";
		$result = $this->db->query($sql, array($tengiaovien,$sodienthoai,$email,$matkhau,$magiaovien));
		return $result;
	}
}

/* End of file Model_CaNhan.php */
/* Location: ./application/models/Model_CaNhan.php */