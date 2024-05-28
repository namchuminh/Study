<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class CaNhan extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		if(!$this->session->has_userdata('giaovien')){
			return redirect(base_url('admin/dang-nhap/'));
		}

		$this->load->model('Admin/Model_CaNhan');
	}

	public function index()
	{
		$data['title'] = "Cập nhật thông tin cá nhân";
		$data['detail'] = $this->Model_CaNhan->getById($this->session->userdata('magiaovien'));
		if ($this->input->server('REQUEST_METHOD') === 'POST') {
			$tengiaovien = $this->input->post('tengiaovien');
			$sodienthoai = $this->input->post('sodienthoai');
			$email = $this->input->post('email');
			$matkhau = $this->Model_CaNhan->getById($this->session->userdata('magiaovien'))[0]['MatKhau'];

			if(!empty($_POST['matkhau']) && isset($_POST['matkhau'])){
				$matkhau = md5($_POST['matkhau']);
			}

			$this->Model_CaNhan->update($tengiaovien,$sodienthoai,$email,$matkhau,$this->session->userdata('magiaovien'));
			$data['success'] = "Cập nhật thông tin thành công!";
			$data['detail'] = $this->Model_CaNhan->getById($this->session->userdata('magiaovien'));
			return $this->load->view('Admin/View_CaNhan', $data);
		}

		return $this->load->view('Admin/View_CaNhan', $data);
	}

}

/* End of file CaNhan.php */
/* Location: ./application/controllers/CaNhan.php */