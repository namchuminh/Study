<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class TrangChu extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		if(!$this->session->has_userdata('giaovien')){
			return redirect(base_url('admin/dang-nhap/'));
		}
		$this->load->model('Admin/Model_TrangChu');
		$this->load->model('Student/Model_KetQua');
	}

	public function index()
	{
		$data['title'] = "Trang quản trị";
		$data['totalBaiHoc'] = $this->Model_TrangChu->totalBaiHoc();
		$data['totalBaiThi'] = $this->Model_TrangChu->totalBaiThi();
		$data['totalHocSinh'] = $this->Model_TrangChu->totalHocSinh();
		$data['result'] = $this->Model_KetQua->getRecentHome();
		return $this->load->view('Admin/View_TrangChu', $data);
	}

	public function sumView(){
		$data = array();

		for($i = 1; $i <= 12; $i++){
			$list = $this->Model_TrangChu->sumView($i);
			if(empty($list[0]['LuotXem']) || !isset($list[0]['LuotXem']) || $list[0]['LuotXem'] == null){
				array_push($data,0);
			}else{
				array_push($data,(int)$list[0]['LuotXem']);
			}
		}

		$data = json_encode($data);

		echo $data;
	}


	public function avgResult(){
		$data = array();

		for($i = 1; $i <= 12; $i++){
			$list = $this->Model_TrangChu->avgResult($i);
			if(empty($list[0]['TongDiem']) || !isset($list[0]['TongDiem']) || $list[0]['TongDiem'] == null){
				array_push($data,0);
			}else{
				array_push($data,(int)$list[0]['TongDiem']);
			}
		}

		$data = json_encode($data);

		echo $data;
	}
}

/* End of file TrangChu.php */
/* Location: ./application/controllers/TrangChu.php */