<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class DangNhap extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		if($this->session->has_userdata('hocsinh')){
			return redirect(base_url());
		}
		$this->load->model('Student/Model_HocSinh');
	}

	public function index()
	{
		$data['title'] = "Đăng nhập tài khoản học sinh";
		if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $taikhoan = $this->input->post('taikhoan');
			$matkhau = $this->input->post('matkhau');

			if($this->Model_HocSinh->checkAccountAdmin($taikhoan, md5($matkhau)) >= 1){
				if($this->Model_HocSinh->checkBlock($taikhoan) <= 0){
					$data["error"] = "Tài khoản hiện đang bị cấm khỏi hệ thống!";
					return $this->load->view('Student/View_DangNhap', $data);
				}else{
					$newdata = array(
						'mahocsinh' => $this->Model_HocSinh->getInfoByUsername($taikhoan)[0]['MaHocSinh'],
					    'hocsinh'  => $taikhoan,
					    'login' => True,
					    'hotenhocsinh' => $this->Model_HocSinh->getInfoByUsername($taikhoan)[0]['TenHocSinh'],
					);
					$this->session->set_userdata($newdata);
					$this->session->set_flashdata('success', 'Đăng nhập thành công!');
					return redirect(base_url());
				}
			}else{
				$data["error"] = "Tài khoản hoặc mật khẩu không đúng!";
				return $this->load->view('Student/View_DangNhap', $data);
			}

        }
		return $this->load->view('Student/View_DangNhap',$data);
	}

	public function register(){
		$data['title'] = "Đăng ký tài khoản học sinh";
		if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $taikhoan = $this->input->post('taikhoan');
			$matkhau = $this->input->post('matkhau');
			$tenhocsinh = $this->input->post('tenhocsinh');
			$ngaysinh = $this->input->post('ngaysinh');
			$tentruong = $this->input->post('tentruong');
			$gioitinh = $this->input->post('gioitinh');

			if(count($this->Model_HocSinh->getInfoByUsername($taikhoan)) >= 1){
				$data["error"] = "Tài khoản đã tồn tại trong hệ thống!";
				return $this->load->view('Student/View_DangKy', $data);
			}	

			$this->Model_HocSinh->insert($tenhocsinh,$ngaysinh,$gioitinh,$tentruong,$taikhoan,md5($matkhau));

			$data["success"] = "Đăng ký tài khoản thành công!";
			return $this->load->view('Student/View_DangKy', $data);
        }
		return $this->load->view('Student/View_DangKy',$data);
	}

}

/* End of file DangNhap.php */
/* Location: ./application/controllers/DangNhap.php */