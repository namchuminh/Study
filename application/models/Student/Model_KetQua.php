<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_KetQua extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}

	public function checkNumberSearch($mahocsinh, $mabaithi, $ngaythi)
	{
		$sql = "SELECT ketqua.*, baithi.MaBaiThi, baithi.SoCauHoi, baithi.MucDo, baithi.LoaiBaiThi, hocsinh.TenHocSinh, hocsinh.TenTruong FROM ketqua, baithi, hocsinh WHERE ketqua.MaBaiThi = baithi.MaBaiThi AND ketqua.TrangThai = 1 AND ketqua.MaHocSinh = hocsinh.MaHocSinh AND hocsinh.MaHocSinh = ? AND (ketqua.MaBaiThi = ? OR DATE(ketqua.ThoiGian) = ?)";
		$result = $this->db->query($sql, array($mahocsinh, $mabaithi, $ngaythi));
		return $result->num_rows();
	}

	public function getAllSearch($mahocsinh, $mabaithi, $ngaythi, $start = 0, $end = 20){
		$mahocsinh = $_SESSION['mahocsinh'];
		$sql = "SELECT ketqua.*, baithi.MaBaiThi, baithi.SoCauHoi, baithi.MucDo, baithi.LoaiBaiThi, hocsinh.TenHocSinh, hocsinh.TenTruong FROM ketqua, baithi, hocsinh WHERE ketqua.MaBaiThi = baithi.MaBaiThi AND ketqua.TrangThai = 1 AND ketqua.MaHocSinh = hocsinh.MaHocSinh AND hocsinh.MaHocSinh = ? AND (ketqua.MaBaiThi = ? OR DATE(ketqua.ThoiGian) = ?) ORDER BY ketqua.MaKetQua DESC LIMIT ?, ?";
		$result = $this->db->query($sql, array($mahocsinh, $mabaithi, $ngaythi, $start, $end));
		return $result->result_array();
	}

	public function checkNumber()
	{
		$mahocsinh = $_SESSION['mahocsinh'];
		$sql = "SELECT ketqua.*, baithi.MaBaiThi, baithi.SoCauHoi, baithi.MucDo, baithi.LoaiBaiThi FROM ketqua, baithi WHERE ketqua.MaBaiThi = baithi.MaBaiThi AND ketqua.TrangThai = 1 AND ketqua.MaHocSinh = ?";
		$result = $this->db->query($sql, array($mahocsinh));
		return $result->num_rows();
	}

	public function getAll($start = 0, $end = 20){
		$mahocsinh = $_SESSION['mahocsinh'];
		$sql = "SELECT ketqua.*, baithi.MaBaiThi, baithi.SoCauHoi, baithi.MucDo, baithi.LoaiBaiThi FROM ketqua, baithi WHERE ketqua.MaBaiThi = baithi.MaBaiThi AND ketqua.TrangThai = 1 AND ketqua.MaHocSinh = ? ORDER BY ketqua.MaKetQua DESC LIMIT ?, ?";
		$result = $this->db->query($sql, array($mahocsinh, $start, $end));
		return $result->result_array();
	}

	public function getById($maketqua){
		$sql = "SELECT * FROM ketqua WHERE MaKetQua = ?";
		$result = $this->db->query($sql, array($maketqua));
		return $result->result_array();
	}


	public function getLate(){
		$sql = "SELECT ketqua.*, baithi.MaBaiThi, baithi.SoCauHoi, baithi.MucDo, baithi.LoaiBaiThi FROM ketqua, baithi WHERE ketqua.MaBaiThi = baithi.MaBaiThi AND ketqua.TrangThai = 1 AND DATE(ketqua.ThoiGian) = CURDATE() ORDER BY ketqua.MaKetQua DESC LIMIT 1";
		$result = $this->db->query($sql);
		return $result->result_array();
	}

	public function getRecentHome(){
		$sql = "SELECT ketqua.*, baithi.MaBaiThi, baithi.SoCauHoi, baithi.MucDo, baithi.LoaiBaiThi, hocsinh.TenHocSinh, hocsinh.TenTruong FROM ketqua, baithi, hocsinh WHERE ketqua.MaBaiThi = baithi.MaBaiThi AND ketqua.TrangThai = 1 AND ketqua.MaHocSinh = hocsinh.MaHocSinh ORDER BY ketqua.MaKetQua DESC LIMIT 10";
		$result = $this->db->query($sql);
		return $result->result_array();
	}
}

/* End of file Model_KetQua.php */
/* Location: ./application/models/Model_KetQua.php */