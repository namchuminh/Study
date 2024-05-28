<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_HocSinh extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
	}

	public function checkAccountAdmin($taikhoan, $matkhau){
		$sql = "SELECT * FROM hocsinh WHERE TaiKhoan = ? AND MatKhau = ?";
		$result = $this->db->query($sql, array($taikhoan, $matkhau));
		return $result->num_rows();
	}

	public function checkBlock($taikhoan){
		$sql = "SELECT * FROM hocsinh WHERE TaiKhoan = ? AND TrangThai = 1";
		$result = $this->db->query($sql, array($taikhoan));
		return $result->result_array();
	}

	public function getInfoByUsername($taikhoan){
		$sql = "SELECT * FROM hocsinh WHERE TaiKhoan = ?";
		$result = $this->db->query($sql, array($taikhoan));
		return $result->result_array();
	}

	public function insert($tenhocsinh,$ngaysinh,$gioitinh,$tentruong,$taikhoan,$matkhau){
		$data = array(
	        "TenHocSinh" => $tenhocsinh,
	        "NgaySinh" => $ngaysinh,
	        "GioiTinh" => $gioitinh,
	        "TenTruong" => $tentruong,
	        "TaiKhoan" => $taikhoan,
	        "MatKhau" => $matkhau
	    );

	    $this->db->insert('hocsinh', $data);
	    $lastInsertedId = $this->db->insert_id();

	    return $lastInsertedId;
	}

	public function getById($mahocsinh){
		$sql = "SELECT * FROM hocsinh WHERE MaHocSinh = ?";
		$result = $this->db->query($sql, array($mahocsinh));
		return $result->result_array();
	}

	public function update($tenhocsinh,$ngaysinh,$gioitinh,$tentruong,$matkhau,$mahocsinh){
		$sql = "UPDATE hocsinh SET TenHocSinh=?, NgaySinh=?,GioiTinh=?,TenTruong=?,MatKhau=? WHERE MaHocSinh = ?";
		$result = $this->db->query($sql, array($tenhocsinh,$ngaysinh,$gioitinh,$tentruong,$matkhau,$mahocsinh));
		return $result;
	}
}

/* End of file Model_HocSinh.php */
/* Location: ./application/models/Model_HocSinh.php */