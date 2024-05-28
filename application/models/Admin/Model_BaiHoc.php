<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_BaiHoc extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}

	public function add($tenbaihoc,$mota,$duongdan,$magiaovien,$loaibaihoc,$matrinhdo){
		$data = array(
	        "TenBaiHoc" => $tenbaihoc,
	        "MoTa" => $mota,
	        "DuongDan" => $duongdan,
	        "MaGiaoVien" => $magiaovien,
	        "LoaiBaiHoc" => $loaibaihoc,
	        "MaTrinhDo" => $matrinhdo
	    );

	    $this->db->insert('baihoc', $data);
	    $lastInsertedId = $this->db->insert_id();

	    return $lastInsertedId;
	}

	public function checkNumber()
	{
		$sql = "SELECT baihoc.*, trinhdo.TenTrinhDo, trinhdo.DuongDan AS DuongDanTD FROM baihoc, trinhdo WHERE baihoc.TrangThai = 1 AND baihoc.MaTrinhDo = trinhdo.MaTrinhDo";
		$result = $this->db->query($sql);
		return $result->num_rows();
	}

	public function getAll($start = 0, $end = 10){
		$sql = "SELECT baihoc.*, trinhdo.TenTrinhDo, trinhdo.DuongDan AS DuongDanTD FROM baihoc, trinhdo WHERE baihoc.TrangThai = 1 AND baihoc.MaTrinhDo = trinhdo.MaTrinhDo ORDER BY baihoc.mabaihoc DESC LIMIT ?, ?";
		$result = $this->db->query($sql, array($start, $end));
		return $result->result_array();
	}

	public function getById($mabaihoc){
		$sql = "SELECT * FROM baihoc WHERE mabaihoc = ? AND TrangThai = 1";
		$result = $this->db->query($sql, array($mabaihoc));
		return $result->result_array();
	}

	public function update($tenbaihoc,$mota,$duongdan,$magiaovien,$loaibaihoc,$matrinhdo,$mabaihoc){
		$sql = "UPDATE baihoc SET TenBaiHoc = ?, mota = ?, DuongDan =?, MaGiaoVien = ?, LoaiBaiHoc = ?, MaTrinhDo = ? WHERE mabaihoc = ?";
		$result = $this->db->query($sql, array($tenbaihoc,$mota,$duongdan,$magiaovien,$loaibaihoc,$matrinhdo,$mabaihoc));
		return $result;
	}

	public function updateFile($teptin,$mabaihoc){
		$sql = "UPDATE baihoc SET TepTin = ? WHERE mabaihoc = ?";
		$result = $this->db->query($sql, array($teptin,$mabaihoc));
		return $result;
	}

	public function delete($mabaihoc){
		$sql = "UPDATE baihoc SET TrangThai = 0 WHERE mabaihoc = ?";
		$result = $this->db->query($sql, array($mabaihoc));
		return $result;
	}

}

/* End of file Model_baihoc.php */
/* Location: ./application/models/Model_baihoc.php */