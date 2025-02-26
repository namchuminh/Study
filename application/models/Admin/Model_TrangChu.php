<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_TrangChu extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
	}

    public function totalBaiHoc(){
        $sql = "SELECT * FROM baihoc WHERE TrangThai = 1";
        $result = $this->db->query($sql);
        return $result->num_rows();
    }

    public function totalBaiThi(){
        $sql = "SELECT * FROM baithi WHERE TrangThai = 1";
        $result = $this->db->query($sql);
        return $result->num_rows();
    }

    public function totalHocSinh(){
        $sql = "SELECT * FROM hocsinh WHERE TrangThai = 1";
        $result = $this->db->query($sql);
        return $result->num_rows();
    }

    //Tổng count trong bảng xembaihoc theo tháng
    public function sumView($thang){
        $sql = "SELECT COUNT(*) AS LuotXem FROM xembaihoc WHERE MONTH(ThoiGian) = ? AND YEAR(ThoiGian) = YEAR(NOW())";
        $result = $this->db->query($sql, array($thang));
        return $result->result_array();
    }


    //Tính trung bình điểm theo tháng trong bảng ketqua, với thuộc tính ChamDiem, làm tròn điểm chỉ có 1 số sau dấu phẩy
    public function avgResult($thang){
        $sql = "SELECT AVG(ChamDiem) AS TongDiem FROM ketqua WHERE MONTH(ThoiGian) = ? AND YEAR(ThoiGian) = YEAR(NOW())";
        $result = $this->db->query($sql, array($thang));
        return $result->result_array();
    }
    

}

/* End of file Model_trinhdo.php */
/* Location: ./application/models/Model_trinhdo.php */