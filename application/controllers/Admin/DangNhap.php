<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class DangNhap extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		if($this->session->has_userdata('giaovien')){
			return redirect(base_url('admin/'));
		}
		$this->load->model('Admin/Model_DangNhap');
	}

	public function index()
	{
		$data['title'] = "Đăng nhập tài khoản giáo viên";
		if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $taikhoan = $this->input->post('taikhoan');
			$matkhau = $this->input->post('matkhau');

			if($this->Model_DangNhap->checkAccountAdmin($taikhoan, md5($matkhau)) >= 1){
				$newdata = array(
					'magiaovien' => $this->Model_DangNhap->getInfoByUsername($taikhoan)[0]['MaGiaoVien'],
				    'giaovien'  => $taikhoan,
				    'login' => True,
				    'hoten' => $this->Model_DangNhap->getInfoByUsername($taikhoan)[0]['TenGiaoVien'],
				);
				$this->session->set_userdata($newdata);
				$this->session->set_flashdata('success', 'Đăng nhập thành công');
				return redirect(base_url('admin/'));
			}else{
				$data["error"] = "Tài khoản hoặc mật khẩu không đúng";
				return $this->load->view('Admin/View_DangNhap', $data);
			}

        }
		return $this->load->view('Admin/View_DangNhap',$data);
	}

}

/* End of file DangNhap.php */
/* Location: ./application/controllers/DangNhap.php */