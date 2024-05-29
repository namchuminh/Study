<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class KetQua extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		if(!$this->session->has_userdata('giaovien')){
			return redirect(base_url('admin/dang-nhap/'));
		}

		$this->load->model('Admin/Model_KetQua');
		$this->load->model('Student/Model_BaiThi');
	}

	public function index()
	{
		$totalRecords = $this->Model_KetQua->checkNumber();
		$recordsPerPage = 20;
		$totalPages = ceil($totalRecords / $recordsPerPage); 

		$data['totalPages'] = $totalPages;
		$data['list'] = $this->Model_KetQua->getAll();
		$data['chuacham'] = $this->Model_KetQua->getChuaCham();
		$data['title'] = "Danh sách kết quả thi";
		return $this->load->view('Admin/View_KetQua', $data);
	}

	public function page($trang){
		$data['title'] = "Danh sách kết quả thi";
		$data['chuacham'] = $this->Model_KetQua->getChuaCham();
		$totalRecords = $this->Model_KetQua->checkNumber();
		$recordsPerPage = 20;
		$totalPages = ceil($totalRecords / $recordsPerPage); 

		if($trang < 1){
			return redirect(base_url('admin/ket-qua/'));
		}

		if($trang > $totalPages){
			return redirect(base_url('admin/ket-qua/'));
		}

		$start = ($trang - 1) * $recordsPerPage;


		if($start == 0){
			$data['totalPages'] = $totalPages;
			$data['list'] = $this->Model_KetQua->getAll();
			return $this->load->view('Admin/View_KetQua', $data);
		}else{
			$data['totalPages'] = $totalPages;
			$data['list'] = $this->Model_KetQua->getAll($start);
			return $this->load->view('Admin/View_KetQua', $data);
		}
	}

	public function delete($maketqua){
		if(count($this->Model_KetQua->getById($maketqua)) <= 0){
			$this->session->set_flashdata('error', 'Kết quả thi không tồn tại!');
			return redirect(base_url('admin/ket-qua/'));
		}
		$this->Model_KetQua->delete($maketqua);
		$this->session->set_flashdata('success', 'Xóa kết quả thi thành công!');
		return redirect(base_url('admin/ket-qua/'));
	}

	public function scoring($maketqua){
		if(count($this->Model_KetQua->getById($maketqua)) <= 0){
			$this->session->set_flashdata('error', 'Kết quả thi không tồn tại!');
			return redirect(base_url('admin/ket-qua/'));
		}

		$data['title'] = "Chấm điểm bài thi số ". $this->Model_KetQua->getTuLuan($maketqua)[0]['MaBaiThi'];
		$data['list'] = $this->Model_KetQua->getTuLuan($maketqua);
		if ($this->input->server('REQUEST_METHOD') === 'POST') {
			$socaudung = $this->input->post('socaudung');
			$chamdiem = $this->input->post('chamdiem');

			$this->Model_BaiThi->updateKetQua($socaudung,$chamdiem,$maketqua);

			$this->session->set_flashdata('success', 'Đã chấm '.$chamdiem.' điểm cho bài thi số '.$this->Model_KetQua->getTuLuan($maketqua)[0]['MaBaiThi']);
			return redirect(base_url('admin/ket-qua/'));
		}
		return $this->load->view('Admin/View_ChamDiem', $data);
	}

}

/* End of file KetQua.php */
/* Location: ./application/controllers/KetQua.php */