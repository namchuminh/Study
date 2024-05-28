<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class KetQua extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		if(!$this->session->has_userdata('hocsinh')){
			return redirect(base_url('dang-nhap/'));
		}
		$this->load->model('Student/Model_KetQua');
	}

	public function index()
	{
		$totalRecords = $this->Model_KetQua->checkNumber();
		$recordsPerPage = 20;
		$totalPages = ceil($totalRecords / $recordsPerPage); 

		$data['totalPages'] = $totalPages;
		$data['list'] = $this->Model_KetQua->getAll();
		$data['late'] = $this->Model_KetQua->getLate();
		$data['title'] = "Danh sách kết quả thi";
		return $this->load->view('Student/View_XemKetQua', $data);
	}

	public function page($trang){
		$data['title'] = "Danh sách kết quả thi";
		$data['late'] = $this->Model_KetQua->getLate();
		$totalRecords = $this->Model_KetQua->checkNumber();
		$recordsPerPage = 20;
		$totalPages = ceil($totalRecords / $recordsPerPage); 

		if($trang < 1){
			return redirect(base_url('xem-ket-qua/'));
		}

		if($trang > $totalPages){
			return redirect(base_url('xem-ket-qua/'));
		}

		$start = ($trang - 1) * $recordsPerPage;


		if($start == 0){
			$data['totalPages'] = $totalPages;
			$data['list'] = $this->Model_KetQua->getAll();
			return $this->load->view('Student/View_XemKetQua', $data);
		}else{
			$data['totalPages'] = $totalPages;
			$data['list'] = $this->Model_KetQua->getAll($start);
			return $this->load->view('Student/View_XemKetQua', $data);
		}
	}

}

/* End of file KetQua.php */
/* Location: ./application/controllers/KetQua.php */