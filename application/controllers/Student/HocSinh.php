<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class HocSinh extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		if(!$this->session->has_userdata('hocsinh')){
			return redirect(base_url('dang-nhap/'));
		}

		$this->load->model('Student/Model_HocSinh');
	}

	public function index()
	{
		$data['title'] = "Cập nhật thông tin học sinh";
		$data['detail'] = $this->Model_HocSinh->getById($this->session->userdata('mahocsinh'));
		if ($this->input->server('REQUEST_METHOD') === 'POST') {
			$tenhocsinh = $this->input->post('tenhocsinh');
			$ngaysinh = $this->input->post('ngaysinh');
			$tentruong = $this->input->post('tentruong');
			$gioitinh = $this->input->post('gioitinh');
			$matkhau = $this->Model_HocSinh->getById($this->session->userdata('mahocsinh'))[0]['MatKhau'];

			if(!empty($_POST['matkhau']) && isset($_POST['matkhau'])){
				$matkhau = md5($_POST['matkhau']);
			}

			$this->Model_HocSinh->update($tenhocsinh,$ngaysinh,$gioitinh,$tentruong,$matkhau,$this->session->userdata('mahocsinh'));
			$data['success'] = "Cập nhật thông tin thành công!";
			$data['detail'] = $this->Model_HocSinh->getById($this->session->userdata('mahocsinh'));
			return $this->load->view('Student/View_CaNhan', $data);
		}

		return $this->load->view('Student/View_CaNhan', $data);
	}

}

/* End of file HocSinh.php */
/* Location: ./application/controllers/HocSinh.php */