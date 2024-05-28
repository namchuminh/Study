<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class TrangChu extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Student/Model_BaiHoc');
		$this->load->model('Student/Model_BaiThi');
		$this->load->model('Student/Model_KetQua');
	}

	public function index()
	{
		$data['title'] = "Trang chủ hệ thống học tập!";
		$data['baihoc'] = $this->Model_BaiHoc->getAllHome();
		$data['baithi'] = $this->Model_BaiThi->getAllHome();
		$data['result'] = $this->Model_KetQua->getRecentHome();
		return $this->load->view('Student/View_TrangChu', $data);
	}

}

/* End of file TrangChu.php */
/* Location: ./application/controllers/TrangChu.php */