<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class KetQua extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		if(!$this->session->has_userdata('hocsinh')){
			return redirect(base_url('dang-nhap/'));
		}
		$this->load->model('Student/Model_KetQua');
		$this->load->model('Student/Model_BaiThi');
	}

	public function index()
	{
		if($this->input->get('mabaithi') || $this->input->get('ngaythi')){
			$mahocsinh = $this->session->userdata('mahocsinh');

			$mabaithi = empty($this->input->get('mabaithi')) ? -1 : $this->input->get('mabaithi');
			$ngaythi = $this->input->get('ngaythi');
			$totalRecords = $this->Model_KetQua->checkNumberSearch($mahocsinh,$mabaithi,$ngaythi);
			$recordsPerPage = 20;
			$totalPages = ceil($totalRecords / $recordsPerPage); 

			$data['totalPages'] = $totalPages;
			$data['list'] = $this->Model_KetQua->getAllSearch($mahocsinh,$mabaithi,$ngaythi);
			$data['title'] = "Danh sách kết quả thi";
			$data['late'] = $this->Model_KetQua->getLate();
			return $this->load->view('Student/View_XemKetQua', $data);
		}

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

	public function result($maketqua){
		$mabaithi = $this->Model_KetQua->getById($maketqua)[0]['MaBaiThi'];
		$data['title'] = "Đáp án Bài thi số ".$this->Model_BaiThi->getById($mabaithi)[0]['MaBaiThi'];
		$data['detail'] = $this->Model_BaiThi->getById($mabaithi);
		$data['cauhoi'] = $this->Model_BaiThi->getAllQuestion($mabaithi);
		$data['maketqua'] = $maketqua;
		return $this->load->view('Student/View_XemDapAn', $data);
	}

}

/* End of file KetQua.php */
/* Location: ./application/controllers/KetQua.php */