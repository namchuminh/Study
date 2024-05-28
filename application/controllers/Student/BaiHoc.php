<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class BaiHoc extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Student/Model_BaiHoc');
		$this->load->model('Admin/Model_TrinhDo');
	}

	public function index()
	{
		$totalRecords = $this->Model_BaiHoc->checkNumber();
		$recordsPerPage = 12;
		$totalPages = ceil($totalRecords / $recordsPerPage); 

		$data['totalPages'] = $totalPages;
		$data['list'] = $this->Model_BaiHoc->getAll();
		$data['title'] = "Danh sách bài học";
		return $this->load->view('Student/View_BaiHoc', $data);
	}

	public function page($trang){
		$data['title'] = "Danh sách bài học";
		$totalRecords = $this->Model_BaiHoc->checkNumber();
		$recordsPerPage = 12;
		$totalPages = ceil($totalRecords / $recordsPerPage); 

		if($trang < 1){
			return redirect(base_url('bai-hoc/'));
		}

		if($trang > $totalPages){
			return redirect(base_url('bai-hoc/'));
		}

		$start = ($trang - 1) * $recordsPerPage;


		if($start == 0){
			$data['totalPages'] = $totalPages;
			$data['list'] = $this->Model_BaiHoc->getAll();
			return $this->load->view('Student/View_BaiHoc', $data);
		}else{
			$data['totalPages'] = $totalPages;
			$data['list'] = $this->Model_BaiHoc->getAll($start);
			return $this->load->view('Student/View_BaiHoc', $data);
		}
	}

	public function detail($duongdan){
		if(count($this->Model_BaiHoc->getBySlug($duongdan)) <= 0){
			$this->session->set_flashdata('error', 'Bài học không tồn tại!');
			return redirect(base_url('bai-hoc/'));
		}

		$data['title'] = $this->Model_BaiHoc->getBySlug($duongdan)[0]['TenBaiHoc'];
		$data['detail'] = $this->Model_BaiHoc->getBySlug($duongdan);
		$data['trinhdo'] = $this->Model_TrinhDo->getAll(0,1000);
		return $this->load->view('Student/View_XemBaiHoc', $data);

	}

}

/* End of file BaiHoc.php */
/* Location: ./application/controllers/BaiHoc.php */