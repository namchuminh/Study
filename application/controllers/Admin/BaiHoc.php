<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class BaiHoc extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		if(!$this->session->has_userdata('giaovien')){
			return redirect(base_url('admin/dang-nhap/'));
		}

		$this->load->model('Admin/Model_BaiHoc');
		$this->load->model('Admin/Model_TrinhDo');
		$this->load->model('Admin/Model_BaiThi');
	}

	public function index()
	{
		$totalRecords = $this->Model_BaiHoc->checkNumber();
		$recordsPerPage = 10;
		$totalPages = ceil($totalRecords / $recordsPerPage); 

		$data['totalPages'] = $totalPages;
		$data['list'] = $this->Model_BaiHoc->getAll();
		$data['title'] = "Danh sách bài học";
		return $this->load->view('Admin/View_BaiHoc', $data);
	}

	public function page($trang){
		$data['title'] = "Danh sách bài học";
		$totalRecords = $this->Model_BaiHoc->checkNumber();
		$recordsPerPage = 10;
		$totalPages = ceil($totalRecords / $recordsPerPage); 

		if($trang < 1){
			return redirect(base_url('admin/bai-hoc/'));
		}

		if($trang > $totalPages){
			return redirect(base_url('admin/bai-hoc/'));
		}

		$start = ($trang - 1) * $recordsPerPage;


		if($start == 0){
			$data['totalPages'] = $totalPages;
			$data['list'] = $this->Model_BaiHoc->getAll();
			return $this->load->view('Admin/View_BaiHoc', $data);
		}else{
			$data['totalPages'] = $totalPages;
			$data['list'] = $this->Model_BaiHoc->getAll($start);
			return $this->load->view('Admin/View_BaiHoc', $data);
		}
	}


	public function add()
	{
		$data['title'] = "Thêm bài học";
		$data['trinhdo'] = $this->Model_TrinhDo->getAll(0,1000);
		$data['baithi'] = $this->Model_BaiThi->getAll(0,1000);
		if ($this->input->server('REQUEST_METHOD') === 'POST') {
			$magiaovien = $this->session->userdata('magiaovien');
			$tenbaihoc = $this->input->post('tenbaihoc');
			$loaibaihoc = $this->input->post('loaibaihoc');
			$mota = $this->input->post('mota');
			$matrinhdo = $this->input->post('matrinhdo');
			$mabaithi = $this->input->post('mabaithi');
			$duongdan = $this->input->post('duongdan');

			$mabaihoc = $this->Model_BaiHoc->add($tenbaihoc,$mota,$duongdan,$magiaovien,$loaibaihoc,$matrinhdo,$mabaithi);

			$config['upload_path'] = './uploads/';
			$config['allowed_types'] = '*'; // Cho phép tất cả các loại tệp tin
	        $config['max_size'] = 100000; // Giới hạn kích thước tệp tin là 100MB
			$this->load->library('upload', $config);
			if ($this->upload->do_upload('teptin')){
				$fileData = $this->upload->data();
            	$filePath = base_url('uploads') . "/" . $fileData['file_name'];
            	$this->Model_BaiHoc->updateFile($filePath,$mabaihoc);
			}

			$this->session->set_flashdata('success', 'Thêm bài học thành công!');
			return redirect(base_url('admin/bai-hoc/'));
		}
		return $this->load->view('Admin/View_ThemBaiHoc', $data);
	}

	public function update($mabaihoc)
	{
		if(count($this->Model_BaiHoc->getById($mabaihoc)) <= 0){
			$this->session->set_flashdata('error', 'Bài học không tồn tại!');
			return redirect(base_url('admin/bai-hoc/'));
		}

		$data['title'] = "Cập nhật bài học";
		$data['detail'] = $this->Model_BaiHoc->getById($mabaihoc);
		$data['trinhdo'] = $this->Model_TrinhDo->getAll(0,1000);
		$data['baithi'] = $this->Model_BaiThi->getAll(0,1000);
		if ($this->input->server('REQUEST_METHOD') === 'POST') {
			$magiaovien = $this->session->userdata('magiaovien');
			$tenbaihoc = $this->input->post('tenbaihoc');
			$loaibaihoc = $this->input->post('loaibaihoc');
			$mota = $this->input->post('mota');
			$matrinhdo = $this->input->post('matrinhdo');
			$mabaithi = $this->input->post('mabaithi');
			$duongdan = $this->input->post('duongdan');

			$this->Model_BaiHoc->update($tenbaihoc,$mota,$duongdan,$magiaovien,$loaibaihoc,$matrinhdo,$mabaithi,$mabaihoc);

			$config['upload_path'] = './uploads/';
			$config['allowed_types'] = '*'; // Cho phép tất cả các loại tệp tin
	        $config['max_size'] = 100000; // Giới hạn kích thước tệp tin là 100MB
			$this->load->library('upload', $config);
			if ($this->upload->do_upload('teptin')){
				$fileData = $this->upload->data();
            	$filePath = base_url('uploads') . "/" . $fileData['file_name'];
            	$this->Model_BaiHoc->updateFile($filePath,$mabaihoc);
			}

			$data['success'] = "Cập nhật bài học thành công!";
			$data['detail'] = $this->Model_BaiHoc->getById($mabaihoc);
			return $this->load->view('Admin/View_SuaBaiHoc', $data);
		}

		return $this->load->view('Admin/View_SuaBaiHoc', $data);
	}


	public function delete($mabaihoc)
	{
		if(count($this->Model_BaiHoc->getById($mabaihoc)) <= 0){
			$this->session->set_flashdata('error', 'Bài học không tồn tại!');
			return redirect(base_url('admin/bai-hoc/'));
		}
		$this->Model_BaiHoc->delete($mabaihoc);
		$this->session->set_flashdata('success', 'Xóa bài học thành công!');
		return redirect(base_url('admin/bai-hoc/'));
	}
}

/* End of file BaiHoc.php */
/* Location: ./application/controllers/BaiHoc.php */