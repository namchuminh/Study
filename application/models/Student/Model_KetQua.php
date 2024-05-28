<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_KetQua extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}

	public function checkNumber()
	{
		$sql = "SELECT ketqua.*, baithi.MaBaiThi, baithi.SoCauHoi, baithi.MucDo, baithi.LoaiBaiThi FROM ketqua, baithi WHERE ketqua.MaBaiThi = baithi.MaBaiThi AND ketqua.TrangThai = 1";
		$result = $this->db->query($sql);
		return $result->num_rows();
	}

	public function getAll($start = 0, $end = 20){
		$sql = "SELECT ketqua.*, baithi.MaBaiThi, baithi.SoCauHoi, baithi.MucDo, baithi.LoaiBaiThi FROM ketqua, baithi WHERE ketqua.MaBaiThi = baithi.MaBaiThi AND ketqua.TrangThai = 1 ORDER BY ketqua.MaKetQua DESC LIMIT ?, ?";
		$result = $this->db->query($sql, array($start, $end));
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