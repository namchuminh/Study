<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_BaiHoc extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}

	public function addView($mabaihoc){
		$data = array(
	        "MaBaiHoc" => $mabaihoc,
	    );

	    $this->db->insert('xembaihoc', $data);
	    $lastInsertedId = $this->db->insert_id();

	    return $lastInsertedId;
	}

	public function getAllHome(){
		$sql = "SELECT baihoc.*, trinhdo.TenTrinhDo, trinhdo.DuongDan AS DuongDanTD, giaovien.TenGiaoVien FROM baihoc, trinhdo, giaovien WHERE baihoc.TrangThai = 1 AND baihoc.MaTrinhDo = trinhdo.MaTrinhDo AND giaovien.MaGiaoVien = baihoc.MaGiaoVien ORDER BY baihoc.mabaihoc DESC LIMIT 6";
		$result = $this->db->query($sql);
		return $result->result_array();
	}

	public function getAllHomeSearch($matrinhdo){
		$sql = "SELECT baihoc.*, trinhdo.TenTrinhDo, trinhdo.DuongDan AS DuongDanTD, giaovien.TenGiaoVien FROM baihoc, trinhdo, giaovien WHERE baihoc.TrangThai = 1 AND baihoc.MaTrinhDo = trinhdo.MaTrinhDo AND giaovien.MaGiaoVien = baihoc.MaGiaoVien AND baihoc.MaTrinhDo = ? ORDER BY baihoc.mabaihoc DESC";
		$result = $this->db->query($sql, array($matrinhdo));
		return $result->result_array();
	}

	public function getAllHomeSearchKey($timkiem) {
	    $sql = "SELECT baihoc.*, trinhdo.TenTrinhDo, trinhdo.DuongDan AS DuongDanTD, giaovien.TenGiaoVien 
	            FROM baihoc
	            INNER JOIN trinhdo ON baihoc.MaTrinhDo = trinhdo.MaTrinhDo
	            INNER JOIN giaovien ON giaovien.MaGiaoVien = baihoc.MaGiaoVien
	            WHERE baihoc.TrangThai = 1 
	            AND baihoc.TenBaiHoc LIKE ? 
	            ORDER BY baihoc.mabaihoc DESC";
	    $result = $this->db->query($sql, array('%' . $timkiem . '%'));
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