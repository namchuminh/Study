<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class BaiThi extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		if(!$this->session->has_userdata('giaovien')){
			return redirect(base_url('admin/dang-nhap/'));
		}

		$this->load->model('Admin/Model_BaiThi');
		$this->load->model('Admin/Model_TrinhDo');
	}

	public function index()
	{
		$totalRecords = $this->Model_BaiThi->checkNumber();
		$recordsPerPage = 10;
		$totalPages = ceil($totalRecords / $recordsPerPage); 

		$data['totalPages'] = $totalPages;
		$data['list'] = $this->Model_BaiThi->getAll();
		$data['title'] = "Danh sách bài thi";
		return $this->load->view('Admin/View_BaiThi', $data);
	}

	public function page($trang){
		$data['title'] = "Danh sách bài thi";
		$totalRecords = $this->Model_BaiThi->checkNumber();
		$recordsPerPage = 10;
		$totalPages = ceil($totalRecords / $recordsPerPage); 

		if($trang < 1){
			return redirect(base_url('admin/bai-thi/'));
		}

		if($trang > $totalPages){
			return redirect(base_url('admin/bai-thi/'));
		}

		$start = ($trang - 1) * $recordsPerPage;


		if($start == 0){
			$data['totalPages'] = $totalPages;
			$data['list'] = $this->Model_BaiThi->getAll();
			return $this->load->view('Admin/View_BaiThi', $data);
		}else{
			$data['totalPages'] = $totalPages;
			$data['list'] = $this->Model_BaiThi->getAll($start);
			return $this->load->view('Admin/View_BaiThi', $data);
		}
	}


	public function add()
	{
		$data['title'] = "Thêm bài thi";
		$data['trinhdo'] = $this->Model_TrinhDo->getAll(0,1000);
		if ($this->input->server('REQUEST_METHOD') === 'POST') {
			$mucdo = $this->input->post('mucdo');
			$thoigianlam = $this->input->post('thoigianlam');
			$matrinhdo = $this->input->post('matrinhdo');
			$loaibaithi = 2;
			$socauhoi = $this->input->post('socauhoi');

			$mabaithi = $this->Model_BaiThi->add($matrinhdo,$loaibaithi,$mucdo,$socauhoi,$thoigianlam);
			
			$this->session->set_flashdata('success', 'Thêm bài thi thành công!');
			return redirect(base_url('admin/bai-thi/'));
		}
		return $this->load->view('Admin/View_ThemBaiThi', $data);
	}

	public function update($mabaithi)
	{
		if(count($this->Model_BaiThi->getById($mabaithi)) <= 0){
			$this->session->set_flashdata('error', 'Bài thi không tồn tại!');
			return redirect(base_url('admin/bai-thi/'));
		}

		$data['title'] = "Cập nhật bài thi";
		$data['detail'] = $this->Model_BaiThi->getById($mabaithi);
		$data['trinhdo'] = $this->Model_TrinhDo->getAll(0,1000);
		if ($this->input->server('REQUEST_METHOD') === 'POST') {
			$mucdo = $this->input->post('mucdo');
			$thoigianlam = $this->input->post('thoigianlam');
			$matrinhdo = $this->input->post('matrinhdo');
			$loaibaithi = $this->input->post('loaibaithi');
			$socauhoi = $this->input->post('socauhoi');

			$this->Model_BaiThi->update($matrinhdo,$loaibaithi,$mucdo,$socauhoi,$thoigianlam,$mabaithi);

			$data['success'] = "Cập nhật bài thi thành công!";
			$data['detail'] = $this->Model_BaiThi->getById($mabaithi);
			return $this->load->view('Admin/View_SuaBaiThi', $data);
		}

		return $this->load->view('Admin/View_SuaBaiThi', $data);
	}


	public function addQuestion($mabaithi){
		if(count($this->Model_BaiThi->getById($mabaithi)) <= 0){
			$this->session->set_flashdata('error', 'Bài thi không tồn tại!');
			return redirect(base_url('admin/bai-thi/'));
		}

		$data['title'] = "Thêm câu hỏi bài thi";
		$data['detail'] = $this->Model_BaiThi->getById($mabaithi);
		$socauhoi = $this->Model_BaiThi->getById($mabaithi)[0]['SoCauHoi'];
		$loaibaithi = $this->Model_BaiThi->getById($mabaithi)[0]['LoaiBaiThi'];
		$data['cauhoi'] = $this->Model_BaiThi->getQuestion($mabaithi);
		if ($this->input->server('REQUEST_METHOD') === 'POST') {
			if($loaibaithi == 1){
				if (count($this->Model_BaiThi->getQuestion($mabaithi)) <= 0) {
					for($i = 1; $i <= $socauhoi; $i++){
						$tencauhoi = $this->input->post('tencauhoi'.$i);
						$a = $this->input->post('A'.$i);
						$b = $this->input->post('B'.$i);
						$c = $this->input->post('C'.$i);
						$d = $this->input->post('D'.$i);
						$dapandung = $this->input->post('dapandung'.$i);
						$this->Model_BaiThi->addQuestion($mabaithi,$tencauhoi,$a,$b,$c,$d,$dapandung);
					}
				}else{
					for($i = 1; $i <= $socauhoi; $i++){
						$tencauhoi = $this->input->post('tencauhoi'.$i);
						$a = $this->input->post('A'.$i);
						$b = $this->input->post('B'.$i);
						$c = $this->input->post('C'.$i);
						$d = $this->input->post('D'.$i);
						$dapandung = $this->input->post('dapandung'.$i);
						$macauhoi = $this->input->post('macauhoi'.$i);
						$this->Model_BaiThi->updateQuestion($mabaithi,$tencauhoi,$a,$b,$c,$d,$dapandung,$macauhoi);
					}
				}
				
			}else{
				if (count($this->Model_BaiThi->getQuestion($mabaithi)) <= 0) {
					for($i = 1; $i <= $socauhoi; $i++){
						$tencauhoi = $this->input->post('tencauhoi'.$i);
						$this->Model_BaiThi->addQuestion($mabaithi,$tencauhoi,NULL,NULL,NULL,NULL,NULL);
					}
				}else{
					for($i = 1; $i <= $socauhoi; $i++){
						$tencauhoi = $this->input->post('tencauhoi'.$i);
						$macauhoi = $this->input->post('macauhoi'.$i);
						$this->Model_BaiThi->updateQuestion($mabaithi,$tencauhoi,NULL,NULL,NULL,NULL,NULL,$macauhoi);
					}
				}
				
			}
			
			$data['cauhoi'] = $this->Model_BaiThi->getQuestion($mabaithi);		
			$data['success'] = "Cập nhật danh sách câu hỏi thành công!";
			return $this->load->view('Admin/View_ThemCauHoi', $data);			
		}	
		return $this->load->view('Admin/View_ThemCauHoi', $data);
	}

	public function delete($mabaithi)
	{
		if(count($this->Model_BaiThi->getById($mabaithi)) <= 0){
			$this->session->set_flashdata('error', 'Bài thi không tồn tại!');
			return redirect(base_url('admin/bai-thi/'));
		}
		$this->Model_BaiThi->delete($mabaithi);
		$this->session->set_flashdata('success', 'Xóa bài thi thành công!');
		return redirect(base_url('admin/bai-thi/'));
	}
}

/* End of file BaiThi.php */
/* Location: ./application/controllers/BaiThi.php */