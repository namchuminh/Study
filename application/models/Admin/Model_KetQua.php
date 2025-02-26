<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_KetQua extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}

	public function checkNumberSearch($tenhocsinh, $ngaythi)
	{
		$sql = "SELECT ketqua.*, baithi.MaBaiThi, baithi.SoCauHoi, baithi.MucDo, baithi.LoaiBaiThi, hocsinh.TenHocSinh, hocsinh.TenTruong FROM ketqua, baithi, hocsinh WHERE ketqua.MaBaiThi = baithi.MaBaiThi AND ketqua.TrangThai = 1 AND ketqua.MaHocSinh = hocsinh.MaHocSinh AND ketqua.ChamDiem != -1 AND (hocsinh.TenHocSinh LIKE ? OR DATE(ketqua.ThoiGian) = ?)";
		$result = $this->db->query($sql, array('%'.$tenhocsinh.'%', '%'.$ngaythi.'%'));
		return $result->num_rows();
	}

	public function getAllSearch($tenhocsinh, $ngaythi, $start = 0, $end = 20){
		$sql = "SELECT ketqua.*, baithi.MaBaiThi, baithi.SoCauHoi, baithi.MucDo, baithi.LoaiBaiThi, hocsinh.TenHocSinh, hocsinh.TenTruong FROM ketqua, baithi, hocsinh WHERE ketqua.MaBaiThi = baithi.MaBaiThi AND ketqua.TrangThai = 1 AND ketqua.MaHocSinh = hocsinh.MaHocSinh AND ketqua.ChamDiem != -1 AND (hocsinh.TenHocSinh LIKE ? OR DATE(ketqua.ThoiGian) = ?) ORDER BY ketqua.MaKetQua DESC LIMIT ?, ?";
		$result = $this->db->query($sql, array('%'.$tenhocsinh.'%', '%'.$ngaythi.'%', $start, $end));
		return $result->result_array();
	}

	public function checkNumber()
	{
		$sql = "SELECT ketqua.*, baithi.MaBaiThi, baithi.SoCauHoi, baithi.MucDo, baithi.LoaiBaiThi, hocsinh.TenHocSinh, hocsinh.TenTruong FROM ketqua, baithi, hocsinh WHERE ketqua.MaBaiThi = baithi.MaBaiThi AND ketqua.TrangThai = 1 AND ketqua.MaHocSinh = hocsinh.MaHocSinh AND ketqua.ChamDiem != -1";
		$result = $this->db->query($sql);
		return $result->num_rows();
	}

	public function getAll($start = 0, $end = 20){
		$sql = "SELECT ketqua.*, baithi.MaBaiThi, baithi.SoCauHoi, baithi.MucDo, baithi.LoaiBaiThi, hocsinh.TenHocSinh, hocsinh.TenTruong FROM ketqua, baithi, hocsinh WHERE ketqua.MaBaiThi = baithi.MaBaiThi AND ketqua.TrangThai = 1 AND ketqua.MaHocSinh = hocsinh.MaHocSinh AND ketqua.ChamDiem != -1 ORDER BY ketqua.MaKetQua DESC LIMIT ?, ?";
		$result = $this->db->query($sql, array($start, $end));
		return $result->result_array();
	}

	public function getChuaCham(){
		$sql = "SELECT ketqua.*, baithi.MaBaiThi, baithi.SoCauHoi, baithi.MucDo, baithi.LoaiBaiThi, hocsinh.TenHocSinh, hocsinh.TenTruong FROM ketqua, baithi, hocsinh WHERE ketqua.MaBaiThi = baithi.MaBaiThi AND ketqua.TrangThai = 1 AND ketqua.MaHocSinh = hocsinh.MaHocSinh AND ketqua.ChamDiem = -1 AND ketqua.SoCauDung = -1 ORDER BY ketqua.MaKetQua DESC";
		$result = $this->db->query($sql);
		return $result->result_array();
	}

	public function delete($maketqua){
		$sql = "UPDATE ketqua SET TrangThai = 0 WHERE MaKetQua = ?";
		$result = $this->db->query($sql, array($maketqua));
		return $result;
	}

	public function getById($maketqua){
		$sql = "SELECT * FROM ketqua WHERE MaKetQua = ?";
		$result = $this->db->query($sql, array($maketqua));
		return $result->result_array();
	}

	public function getTuLuan($maketqua){
		$sql = "SELECT tuluan.*, cauhoi.TenCauHoi, ketqua.MaBaiThi FROM ketqua, tuluan, cauhoi WHERE tuluan.MaKetQua = ketqua.MaKetQua AND tuluan.MaCauHoi = cauhoi.MaCauHoi AND tuluan.MaKetQua = ?";
		$result = $this->db->query($sql, array($maketqua));
		return $result->result_array();
	}

}

/* End of file Model_KetQua.php */
/* Location: ./application/models/Model_KetQua.php */