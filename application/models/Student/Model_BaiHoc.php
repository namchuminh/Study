<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_BaiHoc extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}

	public function getAllHome(){
		$sql = "SELECT baihoc.*, trinhdo.TenTrinhDo, trinhdo.DuongDan AS DuongDanTD, giaovien.TenGiaoVien FROM baihoc, trinhdo, giaovien WHERE baihoc.TrangThai = 1 AND baihoc.MaTrinhDo = trinhdo.MaTrinhDo AND giaovien.MaGiaoVien = baihoc.MaGiaoVien ORDER BY baihoc.mabaihoc DESC LIMIT 6";
		$result = $this->db->query($sql);
		return $result->result_array();
	}

	public function checkNumber()
	{
		$sql = "SELECT baihoc.*, trinhdo.TenTrinhDo, trinhdo.DuongDan AS DuongDanTD, giaovien.TenGiaoVien FROM baihoc, trinhdo, giaovien WHERE baihoc.TrangThai = 1 AND baihoc.MaTrinhDo = trinhdo.MaTrinhDo AND baihoc.MaGiaoVien = giaovien.MaGiaoVien";
		$result = $this->db->query($sql);
		return $result->num_rows();
	}

	public function getAll($start = 0, $end = 12){
		$sql = "SELECT baihoc.*, trinhdo.TenTrinhDo, trinhdo.DuongDan AS DuongDanTD, giaovien.TenGiaoVien FROM baihoc, trinhdo, giaovien WHERE baihoc.TrangThai = 1 AND baihoc.MaTrinhDo = trinhdo.MaTrinhDo AND baihoc.MaGiaoVien = giaovien.MaGiaoVien ORDER BY baihoc.mabaihoc DESC LIMIT ?, ?";
		$result = $this->db->query($sql, array($start, $end));
		return $result->result_array();
	}

	public function getBySlug($duongdan){
		$sql = "SELECT * FROM baihoc WHERE DuongDan = ? AND TrangThai = 1";
		$result = $this->db->query($sql, array($duongdan));
		return $result->result_array();
	}

}

/* End of file Model_BaiHoc.php */
/* Location: ./application/models/Model_BaiHoc.php */