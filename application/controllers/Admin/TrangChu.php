<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class TrangChu extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		if(!$this->session->has_userdata('giaovien')){
			return redirect(base_url('admin/dang-nhap/'));
		}
	}

	public function index()
	{
		$data['title'] = "Trang quản trị";
		return $this->load->view('Admin/View_TrangChu', $data);
	}

}

/* End of file TrangChu.php */
/* Location: ./application/controllers/TrangChu.php */