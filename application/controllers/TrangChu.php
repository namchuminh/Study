<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class TrangChu extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Student/Model_BaiHoc');
		$this->load->model('Student/Model_BaiThi');
		$this->load->model('Student/Model_KetQua');
		$this->load->model('Admin/Model_TrinhDo');
	}

	public function index()
	{
		$data['title'] = "Trang chủ hệ thống học tập!";
		if (isset($_GET['lop']) && ($_GET['lop'] != "")) {
			$data['baihoc'] = $this->Model_BaiHoc->getAllHomeSearch($_GET['lop']);
			$data['baithi'] = $this->Model_BaiThi->getAllHomeSearch($_GET['lop']);
			$data['tentrinhdo'] = $this->Model_TrinhDo->getById($_GET['lop'])[0]['TenTrinhDo'];
			return $this->load->view('Student/View_TrangChuTimKiem', $data);
		}

		if (isset($_GET['timkiem'])) {
			if($_GET['timkiem'] == ""){
				return redirect(base_url());
			}

			$timkiem = isset($_GET['timkiem']) && preg_replace('/\D/', '', $_GET['timkiem']) !== '' ? preg_replace('/\D/', '', $_GET['timkiem']) : -1;

			$data['baihoc'] = $this->Model_BaiHoc->getAllHomeSearchKey($_GET['timkiem']);
			$data['baithi'] = $this->Model_BaiThi->getAllHomeSearchKey($timkiem);
			$data['tentrinhdo'] = $_GET['timkiem'];
			return $this->load->view('Student/View_TrangChuTimKiem', $data);
		}

		$data['baihoc'] = $this->Model_BaiHoc->getAllHome();
		$data['baithi'] = $this->Model_BaiThi->getAllHome();
		$data['result'] = $this->Model_KetQua->getRecentHome();
		return $this->load->view('Student/View_TrangChu', $data);
	}

}

/* End of file TrangChu.php */
/* Location: ./application/controllers/TrangChu.php */