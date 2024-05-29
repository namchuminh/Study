<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class BaiThi extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		if(!$this->session->has_userdata('hocsinh')){
			return redirect(base_url('dang-nhap/'));
		}
		$this->load->model('Student/Model_BaiThi');
		$this->load->model('Admin/Model_TrinhDo');
	}

	public function index()
	{
		$totalRecords = $this->Model_BaiThi->checkNumber();
		$recordsPerPage = 12;
		$totalPages = ceil($totalRecords / $recordsPerPage); 

		$data['totalPages'] = $totalPages;
		$data['list'] = $this->Model_BaiThi->getAll();
		$data['title'] = "Danh sách bài thi";
		return $this->load->view('Student/View_BaiThi', $data);
	}

	public function page($trang){
		$data['title'] = "Danh sách bài thi";
		$totalRecords = $this->Model_BaiThi->checkNumber();
		$recordsPerPage = 12;
		$totalPages = ceil($totalRecords / $recordsPerPage); 

		if($trang < 1){
			return redirect(base_url('bai-thi/'));
		}

		if($trang > $totalPages){
			return redirect(base_url('bai-thi/'));
		}

		$start = ($trang - 1) * $recordsPerPage;


		if($start == 0){
			$data['totalPages'] = $totalPages;
			$data['list'] = $this->Model_BaiThi->getAll();
			return $this->load->view('Student/View_BaiThi', $data);
		}else{
			$data['totalPages'] = $totalPages;
			$data['list'] = $this->Model_BaiThi->getAll($start);
			return $this->load->view('Student/View_BaiThi', $data);
		}
	}

	public function test($mabaithi){
		if(count($this->Model_BaiThi->getById($mabaithi)) <= 0){
			$this->session->set_flashdata('error', 'Bài thi không tồn tại!');
			return redirect(base_url('bai-thi/'));
		}

		$data['title'] = "Bài thi số ".$this->Model_BaiThi->getById($mabaithi)[0]['MaBaiThi'];
		$data['detail'] = $this->Model_BaiThi->getById($mabaithi);
		$data['cauhoi'] = $this->Model_BaiThi->getAllQuestion($mabaithi);
		$thoigianlam = $this->Model_BaiThi->getById($mabaithi)[0]['ThoiGianLam'];
		$maketqua = $this->Model_BaiThi->insertResult($this->session->userdata('mahocsinh'),0,0,$mabaithi);
		$array = array(
			'maketqua' => $maketqua,
			'mabaithi' => $mabaithi
		);
		$this->session->set_userdata($array);
		return $this->load->view('Student/View_Thi', $data);
	}

	public function checkResult()
	{
		if ($this->input->server('REQUEST_METHOD') === 'POST') {
			$macauhoi = $this->input->post('macauhoi');
			$dapan = $this->input->post('dapan');
			$maketqua = $this->session->userdata('maketqua');
			$mabaithi = $this->session->userdata('mabaithi');

			$socauthi = $this->Model_BaiThi->getById($mabaithi)[0]['SoCauHoi'];

			if(count($this->Model_BaiThi->checkDapAn($macauhoi,$dapan)) >= 1){
				$socaudung = $this->Model_BaiThi->getKetQua($maketqua)[0]['SoCauDung'] + 1;
				$chamdiem = ($socaudung / $socauthi) * 10;
				$this->Model_BaiThi->updateKetQua($socaudung,$chamdiem,$maketqua);
			}
		}else{
			return;
		}
	}

	public function scoring(){
		if ($this->input->server('REQUEST_METHOD') === 'POST') {
			$maketqua = $this->session->userdata('maketqua');
			$mabaithi = $this->session->userdata('mabaithi');
			$cauhoi = $this->Model_BaiThi->getAllQuestion($mabaithi);

			for($i = 0; $i < count($cauhoi); $i++) {
				$macauhoi = $this->input->post('macauhoi'.$i); 
				$bailam = $this->input->post('bailam'.$i); 

				$this->Model_BaiThi->insertTuLuan($maketqua,$macauhoi,$bailam);
			}

			$this->Model_BaiThi->updateKetQua(-1,-1,$maketqua);

			return redirect(base_url('xem-ket-qua/'));
		}
	}

}

/* End of file BaiThi.php */
/* Location: ./application/controllers/BaiThi.php */