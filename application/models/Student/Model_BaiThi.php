<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_BaiThi extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}

	public function getAllHome(){
		$sql = "SELECT baithi.*, trinhdo.TenTrinhDo, trinhdo.DuongDan FROM baithi, trinhdo WHERE baithi.TrangThai = 1 AND trinhdo.MaTrinhDo = baithi.MaTrinhDo ORDER BY baithi.Mabaithi DESC LIMIT 6";
		$result = $this->db->query($sql);
		return $result->result_array();
	}

	public function getAllHomeSearch($matrinhdo){
		$sql = "SELECT baithi.*, trinhdo.TenTrinhDo, trinhdo.DuongDan FROM baithi, trinhdo WHERE baithi.TrangThai = 1 AND trinhdo.MaTrinhDo = baithi.MaTrinhDo ORDER BY baithi.Mabaithi AND baithi.MaTrinhDo = ? DESC";
		$result = $this->db->query($sql, array($matrinhdo));
		return $result->result_array();
	}

	public function getAllHomeSearchKey($timkiem) {
	    $sql = "SELECT baithi.*, trinhdo.TenTrinhDo, trinhdo.DuongDan 
	            FROM baithi
	            INNER JOIN trinhdo ON trinhdo.MaTrinhDo = baithi.MaTrinhDo
	            WHERE baithi.TrangThai = 1 
	            AND baithi.MaBaiThi LIKE ? 
	            ORDER BY baithi.Mabaithi DESC";
	    $result = $this->db->query($sql, array('%' . $timkiem . '%'));
	    return $result->result_array();
	}

	public function checkNumber()
	{
		$sql = "SELECT baithi.*, trinhdo.TenTrinhDo, trinhdo.DuongDan FROM baithi, trinhdo WHERE baithi.TrangThai = 1 AND trinhdo.MaTrinhDo = baithi.MaTrinhDo";
		$result = $this->db->query($sql);
		return $result->num_rows();
	}

	public function getAll($start = 0, $end = 12){
		$sql = "SELECT baithi.*, trinhdo.TenTrinhDo, trinhdo.DuongDan FROM baithi, trinhdo WHERE baithi.TrangThai = 1 AND trinhdo.MaTrinhDo = baithi.MaTrinhDo ORDER BY baithi.Mabaithi DESC LIMIT ?, ?";
		$result = $this->db->query($sql, array($start, $end));
		return $result->result_array();
	}

	public function getById($Mabaithi){
		$sql = "SELECT * FROM baithi WHERE Mabaithi = ? AND TrangThai = 1";
		$result = $this->db->query($sql, array($Mabaithi));
		return $result->result_array();
	}

	public function getAllQuestion($mabaithi){
		$sql = "SELECT * FROM cauhoi WHERE MaBaiThi = ?";
		$result = $this->db->query($sql, array($mabaithi));
		return $result->result_array();
	}

	public function insertResult($mahocsinh,$socaudung,$chamdiem,$mabaithi){
		$data = array(
	        "MaHocSinh" => $mahocsinh,
	        "SoCauDung" => $socaudung,
	        "ChamDiem" => $chamdiem,
	        "MaBaiThi" => $mabaithi
	    );

	    $this->db->insert('ketqua', $data);
	    $lastInsertedId = $this->db->insert_id();

	    return $lastInsertedId;
	}

	public function checkDapAn($macauhoi,$dapan){
		$sql = "SELECT * FROM cauhoi WHERE MaCauHoi = ? AND DapAnDung = ?";
		$result = $this->db->query($sql, array($macauhoi,$dapan));
		return $result->result_array();
	}

	public function updateKetQua($socaudung,$chamdiem,$maketqua){
		$sql = "UPDATE ketqua SET SoCauDung = ?, ChamDiem = ? WHERE MaKetQua = ?";
		$result = $this->db->query($sql, array($socaudung,$chamdiem,$maketqua));
		return $result;
	}

	public function getKetQua($maketqua){
		$sql = "SELECT * FROM ketqua WHERE MaKetQua = ?";
		$result = $this->db->query($sql, array($maketqua));
		return $result->result_array();
	}

	public function insertTuLuan($maketqua,$macauhoi,$bailam)
	{
		$data = array(
	        "MaKetQua" => $maketqua,
	        "MaCauHoi" => $macauhoi,
	        "BaiLam" => $bailam
	    );

	    $this->db->insert('tuluan', $data);
	    $lastInsertedId = $this->db->insert_id();

	    return $lastInsertedId;
	}
}

/* End of file Model_BaiThi.php */
/* Location: ./application/models/Model_BaiThi.php */