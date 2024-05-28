<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class TrinhDo extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		if(!$this->session->has_userdata('giaovien')){
			return redirect(base_url('admin/dang-nhap/'));
		}

		$this->load->model('Admin/Model_TrinhDo');
	}

	public function index()
	{
		$totalRecords = $this->Model_TrinhDo->checkNumber();
		$recordsPerPage = 10;
		$totalPages = ceil($totalRecords / $recordsPerPage); 

		$data['totalPages'] = $totalPages;
		$data['list'] = $this->Model_TrinhDo->getAll();
		$data['title'] = "Trình độ học tập";
		return $this->load->view('Admin/View_TrinhDo', $data);
	}

	public function page($trang){
		$data['title'] = "Trình độ học tập";
		$totalRecords = $this->Model_TrinhDo->checkNumber();
		$recordsPerPage = 10;
		$totalPages = ceil($totalRecords / $recordsPerPage); 

		if($trang < 1){
			return redirect(base_url('admin/trinh-do/'));
		}

		if($trang > $totalPages){
			return redirect(base_url('admin/trinh-do/'));
		}

		$start = ($trang - 1) * $recordsPerPage;


		if($start == 0){
			$data['totalPages'] = $totalPages;
			$data['list'] = $this->Model_TrinhDo->getAll();
			return $this->load->view('Admin/View_TrinhDo', $data);
		}else{
			$data['totalPages'] = $totalPages;
			$data['list'] = $this->Model_TrinhDo->getAll($start);
			return $this->load->view('Admin/View_TrinhDo', $data);
		}
	}


	public function add()
	{
		$data['title'] = "Thêm trình độ học tập";
		$data['category'] = $this->Model_TrinhDo->getAll();
		if ($this->input->server('REQUEST_METHOD') === 'POST') {
			$tentrinhdo = $this->input->post('tentrinhdo');
			$duongdan = $this->input->post('duongdan');

			$this->Model_TrinhDo->add($tentrinhdo,$duongdan);

			$this->session->set_flashdata('success', 'Thêm trình độ thành công!');
			return redirect(base_url('admin/trinh-do/'));
		}
		return $this->load->view('Admin/View_ThemTrinhDo', $data);
	}

	public function update($matrinhdo)
	{
		if(count($this->Model_TrinhDo->getById($matrinhdo)) <= 0){
			$this->session->set_flashdata('error', 'Trình độ không tồn tại!');
			return redirect(base_url('admin/trinh-do/'));
		}

		$data['title'] = "Cập nhật trình độ học tập";
		$data['detail'] = $this->Model_TrinhDo->getById($matrinhdo);
		if ($this->input->server('REQUEST_METHOD') === 'POST') {
			$tentrinhdo = $this->input->post('tentrinhdo');
			$duongdan = $this->input->post('duongdan');

			$this->Model_TrinhDo->update($tentrinhdo,$duongdan,$matrinhdo);
			$data['success'] = "Cập nhật trình độ thành công!";
			$data['detail'] = $this->Model_TrinhDo->getById($matrinhdo);
			return $this->load->view('Admin/View_SuaTrinhDo', $data);
		}

		return $this->load->view('Admin/View_SuaTrinhDo', $data);
	}


	public function delete($matrinhdo)
	{
		if(count($this->Model_TrinhDo->getById($matrinhdo)) <= 0){
			$this->session->set_flashdata('error', 'Trình độ không tồn tại!');
			return redirect(base_url('admin/trinh-do/'));
		}
		$this->Model_TrinhDo->delete($matrinhdo);
		$this->session->set_flashdata('success', 'Xóa Trình độ thành công!');
		return redirect(base_url('admin/trinh-do/'));
	}
}

/* End of file TrinhDo.php */
/* Location: ./application/controllers/TrinhDo.php */