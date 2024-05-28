<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class HocSinh extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		if(!$this->session->has_userdata('giaovien')){
			return redirect(base_url('admin/dang-nhap/'));
		}

		$this->load->model('Admin/Model_HocSinh');
	}

	public function index()
	{
		$totalRecords = $this->Model_HocSinh->checkNumber();
		$recordsPerPage = 10;
		$totalPages = ceil($totalRecords / $recordsPerPage); 

		$data['totalPages'] = $totalPages;
		$data['list'] = $this->Model_HocSinh->getAll();
		$data['title'] = "Danh sách học sinh";
		return $this->load->view('Admin/View_HocSinh', $data);
	}

	public function page($trang){
		$data['title'] = "Danh sách học sinh";
		$totalRecords = $this->Model_HocSinh->checkNumber();
		$recordsPerPage = 10;
		$totalPages = ceil($totalRecords / $recordsPerPage); 

		if($trang < 1){
			return redirect(base_url('admin/hoc-sinh/'));
		}

		if($trang > $totalPages){
			return redirect(base_url('admin/hoc-sinh/'));
		}

		$start = ($trang - 1) * $recordsPerPage;


		if($start == 0){
			$data['totalPages'] = $totalPages;
			$data['list'] = $this->Model_HocSinh->getAll();
			return $this->load->view('Admin/View_HocSinh', $data);
		}else{
			$data['totalPages'] = $totalPages;
			$data['list'] = $this->Model_HocSinh->getAll($start);
			return $this->load->view('Admin/View_HocSinh', $data);
		}
	}


	public function block($mahocsinh)
	{
		if(count($this->Model_HocSinh->getById($mahocsinh)) <= 0){
			$this->session->set_flashdata('error', 'Học sinh không tồn tại!');
			return redirect(base_url('admin/hoc-sinh/'));
		}

		$trangthai = $this->Model_HocSinh->getById($mahocsinh)[0]['TrangThai'] == -1 ? 1 : -1;

		$this->Model_HocSinh->ban($trangthai,$mahocsinh);
		$this->session->set_flashdata('success', 'Cập nhật trạng thái của học sinh thành công!');
		return redirect(base_url('admin/hoc-sinh/'));
	}
}

/* End of file HocSinh.php */
/* Location: ./application/controllers/HocSinh.php */