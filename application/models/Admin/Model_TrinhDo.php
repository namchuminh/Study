<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_TrinhDo extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}

	public function add($tentrinhdo,$duongdan){
		$data = array(
	        "TenTrinhDo" => $tentrinhdo,
	        "DuongDan" => $duongdan
	    );

	    $this->db->insert('trinhdo', $data);
	    $lastInsertedId = $this->db->insert_id();

	    return $lastInsertedId;
	}

	public function checkNumber()
	{
		$sql = "SELECT * FROM trinhdo WHERE TrangThai = 1";
		$result = $this->db->query($sql);
		return $result->num_rows();
	}

	public function getAll($start = 0, $end = 10){
		$sql = "SELECT * FROM trinhdo WHERE TrangThai = 1 ORDER BY Matrinhdo DESC LIMIT ?, ?";
		$result = $this->db->query($sql, array($start, $end));
		return $result->result_array();
	}

	public function getById($Matrinhdo){
		$sql = "SELECT * FROM trinhdo WHERE Matrinhdo = ? AND TrangThai = 1";
		$result = $this->db->query($sql, array($Matrinhdo));
		return $result->result_array();
	}

	public function update($tentrinhdo,$duongdan,$matrinhdo){
		$sql = "UPDATE trinhdo SET Tentrinhdo = ?, DuongDan =? WHERE Matrinhdo = ?";
		$result = $this->db->query($sql, array($tentrinhdo,$duongdan,$matrinhdo));
		return $result;
	}

	public function delete($matrinhdo){
		$sql = "UPDATE trinhdo SET TrangThai = 0 WHERE Matrinhdo = ?";
		$result = $this->db->query($sql, array($matrinhdo));
		return $result;
	}

}

/* End of file Model_trinhdo.php */
/* Location: ./application/models/Model_trinhdo.php */