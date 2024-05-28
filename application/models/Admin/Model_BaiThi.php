<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_BaiThi extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}

	public function add($matrinhdo,$loaibaithi,$mucdo,$socauhoi,$thoigianlam){
		$data = array(
	        "MaTrinhDo" => $matrinhdo,
	        "LoaiBaiThi" => $loaibaithi,
	        "MucDo" => $mucdo,
	        "SoCauHoi" => $socauhoi,
	        "ThoiGianLam" => $thoigianlam,
	    );

	    $this->db->insert('baithi', $data);
	    $lastInsertedId = $this->db->insert_id();

	    return $lastInsertedId;
	}

	public function checkNumber()
	{
		$sql = "SELECT baithi.*, trinhdo.TenTrinhDo, trinhdo.DuongDan FROM baithi, trinhdo WHERE baithi.TrangThai = 1 AND trinhdo.MaTrinhDo = baithi.MaTrinhDo";
		$result = $this->db->query($sql);
		return $result->num_rows();
	}

	public function getAll($start = 0, $end = 10){
		$sql = "SELECT baithi.*, trinhdo.TenTrinhDo, trinhdo.DuongDan FROM baithi, trinhdo WHERE baithi.TrangThai = 1 AND trinhdo.MaTrinhDo = baithi.MaTrinhDo ORDER BY baithi.Mabaithi DESC LIMIT ?, ?";
		$result = $this->db->query($sql, array($start, $end));
		return $result->result_array();
	}

	public function getById($Mabaithi){
		$sql = "SELECT * FROM baithi WHERE Mabaithi = ? AND TrangThai = 1";
		$result = $this->db->query($sql, array($Mabaithi));
		return $result->result_array();
	}

	public function update($matrinhdo,$loaibaithi,$mucdo,$socauhoi,$thoigianlam,$mabaithi){
		$sql = "UPDATE baithi SET MaTrinhDo = ?, LoaiBaiThi=?, MucDo =?, SoCauHoi=?, ThoiGianLam =? WHERE MaBaiThi = ?";
		$result = $this->db->query($sql, array($matrinhdo,$loaibaithi,$mucdo,$socauhoi,$thoigianlam,$mabaithi));
		return $result;
	}

	public function delete($mabaithi){
		$sql = "UPDATE baithi SET TrangThai = 0 WHERE Mabaithi = ?";
		$result = $this->db->query($sql, array($mabaithi));
		return $result;
	}

	public function addQuestion($mabaithi,$tencauhoi,$a,$b,$c,$d,$dapandung){
		$sql = "INSERT INTO `cauhoi`(`MaBaiThi`, `TenCauHoi`, `A`, `B`, `C`, `D`, `DapAnDung`) VALUES (?, ?, ?, ?, ?, ?, ?)";
		$result = $this->db->query($sql, array($mabaithi,$tencauhoi,$a,$b,$c,$d,$dapandung));
		return $result;
	}

	public function getQuestion($mabaithi){
		$sql = "SELECT * FROM cauhoi WHERE MaBaiThi = ?";
		$result = $this->db->query($sql, array($mabaithi));
		return $result->result_array();
	}

	public function updateQuestion($mabaithi,$tencauhoi,$a,$b,$c,$d,$dapandung,$macauhoi){
		$sql = "UPDATE `cauhoi` SET `MaBaiThi`=?, `TenCauHoi`=?, `A`=?, `B`=?, `C`=?, `D`=?, `DapAnDung`=? WHERE MaCauHoi = ?";
		$result = $this->db->query($sql, array($mabaithi,$tencauhoi,$a,$b,$c,$d,$dapandung,$macauhoi));
		return $result;
	}

}

/* End of file Model_BaiThi.php */
/* Location: ./application/models/Model_BaiThi.php */