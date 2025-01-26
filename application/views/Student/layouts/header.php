<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><?php echo $title; ?></title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" type="image/x-icon" href="<?php echo base_url('public/admin/dist/img/AdminLTELogo.png') ?>">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="<?php echo base_url('public/admin/'); ?>plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="<?php echo base_url('public/admin/'); ?>plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url('public/admin/'); ?>dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="<?php echo base_url('public/admin/'); ?>plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="<?php echo base_url('public/admin/'); ?>plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="<?php echo base_url('public/admin/'); ?>plugins/summernote/summernote-bs4.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini layout-fixed" >
<div class="wrapper">

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light" style="justify-content: space-between;">
    <?php
      // Load model
      $CI = &get_instance();
      $CI->load->model('Admin/Model_TrinhDo');

      // Lấy dữ liệu từ model
      $trinhdo = $CI->Model_TrinhDo->getAll(0,1000);
    ?>
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
          <a href="<?php echo base_url(); ?>" class="nav-link">Trang Chủ</a>
      </li>
      <?php foreach ($trinhdo as $td): ?>
          <li class="nav-item d-none d-sm-inline-block">
              <a href="<?php echo base_url(); ?>?lop=<?php echo $td['MaTrinhDo']; ?>" class="nav-link"><?= htmlspecialchars($td['TenTrinhDo']) ?></a>
          </li>
      <?php endforeach; ?>
    </ul>
    <form class="form-inline ml-3 float-right" style="margin-right: 10px;" action="<?php echo base_url(); ?>">
      <div class="input-group input-group-sm">
        <input class="form-control form-control-navbar" name="timkiem" type="search" placeholder="Tìm bài thi, bài học" aria-label="Search">
        <div class="input-group-append">
          <button class="btn btn-navbar" type="submit">
            <i class="fas fa-search"></i>
          </button>
        </div>
      </div>
    </form>
    <?php if(isset($_SESSION['hocsinh'])){ ?>
      <ul class="navbar-nav ml-auto">
        <!-- Messages Dropdown Menu -->
        <li class="nav-item dropdown">
          <a class="nav-link" href="<?php echo base_url('ca-nhan/') ?>" aria-expanded="false">
            <i class="far fa-user"></i>
            <?php echo $_SESSION['hotenhocsinh'] ?> 
          </a>
        </li>
      </ul>
    <?php } ?>

  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="<?php echo base_url(); ?>" class="brand-link">
      <img src="<?php echo base_url('public/admin/') ?>dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">Hệ Thống Học Tập</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item has-treeview menu-open">
            <a href="<?php echo base_url(); ?>" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Trang Chủ
              </p>
            </a>
          </li>
          
          <li class="nav-header">TÌM BÀI HỌC</li>
          <li class="nav-item has-treeview">
            <a href="<?php echo base_url('bai-hoc/'); ?>" class="nav-link">
              <i class="nav-icon fa-solid fa-book-open"></i>
              <p>
                Tìm Bài Học
              </p>
            </a>
          </li>
          <nav>
            
          </nav>
          <li class="nav-header">LÀM BÀI THI</li>
          <li class="nav-item has-treeview">
            <a href="<?php echo base_url('bai-thi/'); ?>" class="nav-link">
              <i class="nav-icon fa-solid fa-signs-post"></i>
              <p>
                Chọn Bài Thi
              </p>
            </a>
          </li>
          <li class="nav-item has-treeview">
            <a href="<?php echo base_url('xem-ket-qua/'); ?>" class="nav-link">
              <i class="nav-icon fa-solid fa-square-poll-vertical"></i> 
              <p>
                Xem Kết Quả
              </p>
            </a>
          </li>

          <li class="nav-header">TÀI KHOẢN CÁ NHÂN</li>
          <?php if(isset($_SESSION['hocsinh'])){ ?>
            <li class="nav-item has-treeview">
              <a href="<?php echo base_url('ca-nhan/'); ?>" class="nav-link">
                <i class="nav-icon fa-solid fa-lock"></i>
                <p>
                  Cá Nhân
                </p>
              </a>
            </li>
            <li class="nav-item has-treeview">
              <a href="<?php echo base_url('dang-xuat/'); ?>" class="nav-link">
                <i class="nav-icon fa-solid fa-right-from-bracket"></i>
                <p>
                  Đăng Xuất
                </p>
              </a>
            </li>
          <?php }else{ ?>
            <li class="nav-item has-treeview">
              <a href="<?php echo base_url('dang-nhap/'); ?>" class="nav-link">
                <i class="nav-icon fa-solid fa-user"></i>
                <p>
                  Đăng Nhập
                </p>
              </a>
            </li>
            <li class="nav-item has-treeview">
              <a href="<?php echo base_url('dang-ky/'); ?>" class="nav-link">
                <i class="nav-icon fa-solid fa-user-plus"></i>
                <p>
                  Đăng Ký
                </p>
              </a>
            </li>
          <?php } ?>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>