<?php require(APPPATH . 'views/Admin/layouts/header.php'); ?>
<div class="content-wrapper" style="min-height: 436px;">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark">Dashboard</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="<?php echo base_url('admin/'); ?>">Trang Chủ</a></li>
                        <li class="breadcrumb-item active">Bảng Điều Khiển</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <!-- Small boxes (Stat box) -->
            <div class="row">
                <div class="col-lg-4 col-6">
                    <!-- small box -->
                    <div class="small-box bg-info">
                        <div class="inner">
                            <h3><?php echo $totalBaiHoc; ?></h3>
                            <p>Số Bài Học</p>
                        </div>
                        <div class="icon">
                            <i class="fa-solid fa-book"></i>
                        </div>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-4 col-6">
                    <!-- small box -->
                    <div class="small-box bg-success">
                        <div class="inner">
                            <h3><?php echo $totalBaiThi; ?></h3>
                            <p>Số Bài Thi</p>
                        </div>
                        <div class="icon">
                            <i class="fa-solid fa-book-open-reader"></i>
                        </div>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-4 col-6">
                    <!-- small box -->
                    <div class="small-box bg-warning">
                        <div class="inner">
                            <h3><?php echo $totalHocSinh; ?></h3>
                            <p>Số Học Sinh</p>
                        </div>
                        <div class="icon">
                            <i class="fa-solid fa-graduation-cap"></i>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <section class="col-lg-6 connectedSortable ui-sortable">
                    <!-- solid sales graph -->
                    <div class="card bg-gradient-white">
                        <div class="card-header border-0">
                            <h3 class="card-title">
                                <i class="fas fa-th mr-1"></i>
                                Thống Kê Lượt Học
                            </h3>
                        </div>
                        <div class="card-body">
                            <canvas id="orderChar"
                                style="min-height: 250px; height: 400px; max-height: 400px; max-width: 100%;"></canvas>
                        </div>
                        <!-- /.card-body -->

                    </div>
                    <!-- /.card -->
                </section>

                <section class="col-lg-6 connectedSortable ui-sortable">
                    <!-- solid sales graph -->
                    <div class="card bg-gradient-white">
                        <div class="card-header border-0">
                            <h3 class="card-title">
                                <i class="fas fa-th mr-1"></i>
                                Trung Bình Điểm
                            </h3>
                        </div>
                        <div class="card-body">
                            <canvas id="revenueChart"
                                style="min-height: 250px; height: 400px; max-height: 400px; max-width: 100%;"></canvas>
                        </div>
                        <!-- /.card-body -->

                    </div>
                    <!-- /.card -->
                </section>
            </div>

            <div class="row">
                <section class="col-lg-12 connectedSortable ui-sortable">
                    <div class="card bg-gradient-white">
                        <div class="card-header border-0">
                            <h3 class="card-title">
                                <i class="fas fa-th mr-1"></i>
                                Kết Quả Thi Gần Đây
                            </h3>
                        </div>
                        <div class="card-body">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th style="width: fit-content;">Thời Gian Thi</th>
                                        <th style="width: 150px;">Tên Người Thi</th>
                                        <th style="width: 150px;">Trường Học</th>
                                        <th>Tên Bài Thi</th>
                                        <th>Loại Bài Thi</th>
                                        <th>Số Câu Hỏi</th>
                                        <th>Số Câu Đúng</th>
                                        <th>Chấm Điểm</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($result as $key => $value): ?>
                                        <tr>
                                            <td><?php echo $key + 1 ?></td>
                                            <td>
                                                <?php echo $value['ThoiGian'] ?>
                                            </td>
                                            <td>
                                                <?php echo $value['TenHocSinh'] ?>
                                            </td>
                                            <td>
                                                <?php echo $value['TenTruong'] ?>
                                            </td>
                                            <td>
                                                Bài Thi Số <?php echo $value['MaBaiThi'] ?>
                                            </td>
                                            <td>
                                                <?php echo $value['LoaiBaiThi'] == 1 ? "Trắc Nghiệm" : "Tự Luận" ?>
                                            </td>
                                            <td>
                                                <?php echo $value['SoCauHoi'] ?> Câu
                                            </td>
                                            <td>
                                                <?php echo $value['SoCauDung'] == -1 ? "Chưa Chấm" : $value['SoCauDung'] . " Câu"; ?>
                                            </td>
                                            <td>
                                                <?php echo $value['ChamDiem'] == -1 ? "Chưa Chấm" : $value['ChamDiem'] . " Điểm"; ?>
                                            </td>
                                        </tr>
                                    <?php endforeach ?>
                                </tbody>
                            </table>
                            <?php if (count($result) <= 0): ?>
                                <p class="mt-2" style="text-align: center;">Chưa có kết quả thi gần đây!</p>
                            <?php endif ?>
                        </div>
                        <!-- /.card-body -->

                    </div>
                </section>
            </div>

        </div><!-- /.container-fluid -->
    </section>

    <!-- /.content -->
</div>
<?php require(APPPATH . 'views/Admin/layouts/footer.php'); ?>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    $(document).ready(function () {
        $.get('<?php echo base_url("admin/luot-hoc/"); ?>', function (data) {

            var data = JSON.parse(data)
            // Dữ liệu doanh thu theo tháng
            var months = ["Tháng 1", "Tháng 2", "Tháng 3", "Tháng 4", "Tháng 5", "Tháng 6", "Tháng 7", "Tháng 8", "Tháng 9", "Tháng 10", "Tháng 11", "Tháng 12"];
            var order = data;

            // Lấy thẻ canvas
            var ctx = document.getElementById('orderChar').getContext('2d');

            // Khởi tạo biểu đồ đường
            var orderChar = new Chart(ctx, {
                type: 'line',
                data: {
                    labels: months,
                    datasets: [{
                        label: 'Lượt Học',
                        data: order,
                        borderColor: 'rgb(75, 192, 192)',
                        tension: 0.1,
                        fill: true
                    }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true,
                            ticks: {
                                stepSize: 1, // Đảm bảo chỉ hiển thị số nguyên
                                callback: function (value, index, values) {
                                    return Math.round(value); // Làm tròn giá trị
                                }
                            }
                        }
                    }
                },
            });
        })

        //Dùng biểu đồ cột thay cho biểu đồ đường

        $.get('<?php echo base_url("admin/diem-trung-binh/"); ?>', function (data) {

            var data = JSON.parse(data)
            // Dữ liệu doanh thu theo tháng
            var months = ["Tháng 1", "Tháng 2", "Tháng 3", "Tháng 4", "Tháng 5", "Tháng 6", "Tháng 7", "Tháng 8", "Tháng 9", "Tháng 10", "Tháng 11", "Tháng 12"];
            var revenues = data;

            // Lấy thẻ canvas
            var ctx = document.getElementById('revenueChart').getContext('2d');

            // Khởi tạo biểu đồ đường
            var revenueChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: months,
                    datasets: [{
                        label: 'Trung Bình Điểm',
                        data: revenues,
                        backgroundColor: 'rgba(75, 192, 192, 0.5)', // Màu nền cột
                        borderColor: 'rgb(75, 192, 192)', // Màu viền cột
                        borderWidth: 1,
                        tension: 0.1,
                        fill: true
                    }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true,
                            min: 0, // Giới hạn giá trị nhỏ nhất
                            max: 10 // Giới hạn giá trị lớn nhất
                        }
                    }
                }
            });
        })
    });
</script>