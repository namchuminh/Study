<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller'] = 'TrangChu';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

$route['admin/dang-nhap'] = 'Admin/DangNhap/index';
$route['admin/dang-xuat'] = 'Admin/DangXuat';

$route['admin'] = 'Admin/TrangChu';
$route['admin/luot-hoc'] = 'Admin/TrangChu/sumView';
$route['admin/diem-trung-binh'] = 'Admin/TrangChu/avgResult';

$route['admin/trinh-do'] = 'Admin/TrinhDo';
$route['admin/trinh-do/(:any)/trang'] = 'Admin/TrinhDo/page/$1';
$route['admin/trinh-do/them'] = 'Admin/TrinhDo/add';
$route['admin/trinh-do/(:any)/sua'] = 'Admin/TrinhDo/update/$1';
$route['admin/trinh-do/(:any)/xoa'] = 'Admin/TrinhDo/delete/$1';


$route['admin/hoc-sinh'] = 'Admin/HocSinh';
$route['admin/hoc-sinh/(:any)/trang'] = 'Admin/HocSinh/page/$1';
$route['admin/hoc-sinh/(:any)/chan'] = 'Admin/HocSinh/block/$1';

$route['admin/ca-nhan'] = 'Admin/CaNhan';

$route['admin/bai-hoc'] = 'Admin/BaiHoc';
$route['admin/bai-hoc/(:any)/trang'] = 'Admin/BaiHoc/page/$1';
$route['admin/bai-hoc/them'] = 'Admin/BaiHoc/add';
$route['admin/bai-hoc/(:any)/sua'] = 'Admin/BaiHoc/update/$1';
$route['admin/bai-hoc/(:any)/xoa'] = 'Admin/BaiHoc/delete/$1';

$route['admin/bai-thi'] = 'Admin/BaiThi';
$route['admin/bai-thi/(:any)/trang'] = 'Admin/BaiThi/page/$1';
$route['admin/bai-thi/them'] = 'Admin/BaiThi/add';
$route['admin/bai-thi/(:any)/sua'] = 'Admin/BaiThi/update/$1';
$route['admin/bai-thi/(:any)/xoa'] = 'Admin/BaiThi/delete/$1';
$route['admin/bai-thi/(:any)/them-cau-hoi'] = 'Admin/BaiThi/addQuestion/$1';

$route['admin/ket-qua'] = 'Admin/KetQua';
$route['admin/ket-qua/(:any)/trang'] = 'Admin/KetQua/page/$1';
$route['admin/ket-qua/them'] = 'Admin/KetQua/add';
$route['admin/ket-qua/(:any)/xoa'] = 'Admin/KetQua/delete/$1';
$route['admin/ket-qua/(:any)/cham-diem'] = 'Admin/KetQua/scoring/$1';

$route['bai-hoc'] = 'Student/BaiHoc/index';
$route['bai-hoc/(:any)/trang'] = 'Student/BaiHoc/page/$1';
$route['bai-hoc/(:any)'] = 'Student/BaiHoc/detail/$1';

$route['bai-thi'] = 'Student/BaiThi/index';
$route['bai-thi/(:any)/trang'] = 'Student/BaiThi/page/$1';
$route['lam-bai-thi/(:any)'] = 'Student/BaiThi/test/$1';
$route['kiem-tra-dap-an'] = 'Student/BaiThi/checkResult';
$route['gui-dap-an'] = 'Student/BaiThi/scoring';

$route['dang-nhap'] = 'Student/DangNhap/index';
$route['dang-ky'] = 'Student/DangNhap/register';
$route['dang-xuat'] = 'Student/DangXuat';

$route['ca-nhan'] = 'Student/HocSinh';

$route['xem-ket-qua'] = 'Student/KetQua/index';
$route['xem-ket-qua/(:any)/trang'] = 'Student/KetQua/page/$1';
$route['xem-dap-an/(:any)'] = 'Student/KetQua/result/$1';


