<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class DangXuat extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		$this->session->unset_userdata('hocsinh');
		$this->session->unset_userdata('mahocsinh');
		$this->session->unset_userdata('login');
		$this->session->unset_userdata('hotenhocsinh');
		return redirect(base_url('dang-nhap/'));
	}

}

/* End of file DangXuat.php */
/* Location: ./application/controllers/DangXuat.php */