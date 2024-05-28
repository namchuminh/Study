<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class DangXuat extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		$this->session->unset_userdata('giaovien');
		$this->session->unset_userdata('magiaovien');
		$this->session->unset_userdata('login');
		$this->session->unset_userdata('hoten');
		return redirect(base_url('admin/dang-nhap/'));
	}

}

/* End of file DangXuat.php */
/* Location: ./application/controllers/DangXuat.php */