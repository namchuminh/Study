<?php require(APPPATH.'views/Student/layouts/header.php'); ?>
<script src="<?php echo base_url('public/ckeditor5/build/ckeditor.js') ?>"></script>
<div class="content-wrapper" style="min-height: 1203.31px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Trang Chủ</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>">Trang Chủ</a></li>
              <li class="breadcrumb-item"><a href="<?php echo base_url('bai-thi/'); ?>">Bài Thi</a></li>
              <li class="breadcrumb-item active">Bài Thi Số <?php echo $detail[0]['MaBaiThi']; ?></li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- /.row -->
        <form class="row" action="<?php echo base_url('gui-dap-an/'); ?>" method="POST">
          <div class="col-12">
            <div class="card">
            	<div class="card-header">
            		<h5>Bài Thi Số <?php echo $detail[0]['MaBaiThi']; ?></h5>
            		Thời gian còn lại: <div id="timer"><?php echo $detail[0]['ThoiGianLam'] ?>:00</div>
            		<?php if($detail[0]['LoaiBaiThi'] == 2){ ?>
            			<p>Lưu ý: Nộp bài khi hết giờ (00:00) sẽ bị chấm 0 điểm!</p>
            		<?php } ?>
            	</div>
            	<div class="card-body">
            		<?php if($detail[0]['LoaiBaiThi'] == 1){ ?>
            			<?php foreach ($cauhoi as $key => $value): ?>
		            		<dl>
					            <dt>Câu <?php echo $key + 1 ?>: <?php echo $value['TenCauHoi'] ?></dt>
					            <dd></dd>
					            <dd>
					            	<input class="form-check-input" type="radio" value="<?php echo $value['MaCauHoi'] ?>,A" name="<?php echo $value['MaCauHoi'] ?>">
						            A. <?php echo $value['A'] ?>
					            </dd>
					            <dd>
					            	<input class="form-check-input" type="radio" value="<?php echo $value['MaCauHoi'] ?>,B" name="<?php echo $value['MaCauHoi'] ?>">
					            	B. <?php echo $value['B'] ?>
					            </dd>
					            <dd>
					            	<input class="form-check-input" type="radio" value="<?php echo $value['MaCauHoi'] ?>,C" name="<?php echo $value['MaCauHoi'] ?>">
						            C. <?php echo $value['C'] ?>
					            </dd>
					            <dd>
					            	<input class="form-check-input" type="radio" value="<?php echo $value['MaCauHoi'] ?>,D" name="<?php echo $value['MaCauHoi'] ?>">
						            D. <?php echo $value['D'] ?>
					            </dd>
					        </dl>
				        <?php endforeach ?>
				    <?php }else{ ?>
				    	<?php for($i = 0; $i < count($cauhoi); $i++): ?>
					        <dl>
					            <dt>Câu <?php echo $i + 1 ?>: <?php echo $cauhoi[$i]['TenCauHoi'] ?></dt>
					            <br>
					            <dd>
					            	<input type="hidden" name="macauhoi<?php echo $i; ?>" value="<?php echo $cauhoi[$i]['MaCauHoi'] ?>">
					            	<textarea class="form-control" name="bailam<?php echo $i; ?>"></textarea>
					            </dd>
					        </dl>
				  		<?php endfor ?>
				    <?php } ?>
            	</div>
            	<div class="text-right mr-3">
            		<?php if($detail[0]['LoaiBaiThi'] == 1){ ?>
		        		<a class="btn btn-primary mb-3" href="<?php echo base_url('xem-ket-qua/') ?>">Nộp Bài Ngay</a>
		        	<?php }else{ ?>
		        		<button type="submit" class="btn btn-primary mb-3 nopbai">Nộp Bài Ngay</button>
		        	<?php } ?>
		        </div>
            </div>
          </div>
        </form>
        
        
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
<style type="text/css">
	.form-check-input {
	    position: unset;
	    margin-top: .3rem;
	    margin-left: unset;
	}
	label:not(.form-check-label):not(.custom-file-label) {
	    font-weight: unset;
	    cursor: pointer;
	}

	#timer {
        font-size: 2em;
        color: red;
    }
    .ck-editor__editable {min-height: 200px;}
</style>
<?php require(APPPATH.'views/Student/layouts/footer.php'); ?>
<script type="text/javascript" src="<?php echo base_url('public/ckeditor5/sample/script.js'); ?>"></script>
<script type="text/javascript" src="<?php echo base_url('public/admin/js/lock.js') ?>"></script>
<script type="text/javascript">
	$(document).ready(function(){
		// Khởi tạo thời gian
        var minutes = <?php echo $detail[0]['ThoiGianLam']; ?>;
        var seconds = 0;
        var timeUp = false;

        // Cập nhật hiển thị đồng hồ
        function updateTimerDisplay() {
            $('#timer').text(
                (minutes < 10 ? '0' : '') + minutes + ':' +
                (seconds < 10 ? '0' : '') + seconds
            );
        }

        // Hàm đếm ngược
        function countdown() {
            if (seconds === 0) {
                if (minutes === 0) {
                    timeUp = true;
                    clearInterval(timerInterval);
                    $('#timer').text("Hết giờ làm bài!");
                } else {
                    minutes--;
                    seconds = 59;
                }
            } else {
                seconds--;
            }
            updateTimerDisplay();
        }

        // Bắt đầu đếm ngược
        var timerInterval = setInterval(countdown, 1000);


	  	$('input[type="radio"]').change(function(e){
	  		if (timeUp) {
                alert("Hết thời gian làm bài!");
                window.location.href = "<?php echo base_url('xem-ket-qua/') ?>";
            }else{
            	var selectedValue = $(this).val();
		  		const macauhoi = selectedValue.split(',')[0]
		  		const dapan = selectedValue.split(',')[1]
		  		const url = '<?php echo base_url("kiem-tra-dap-an/"); ?>'
		  		$.post(url, {macauhoi, dapan})
            }
	  	})

	  	$(".nopbai").click(function(e){
	  		if (timeUp) {
	  			e.preventDefault();
	  			alert("Bạn đã nộp muộn và bị chấm 0 điểm!");
                window.location.href = "<?php echo base_url('xem-ket-qua/') ?>";
	  		}
	  	})

	});
</script>

<script type="text/javascript">
	$(document).ready(function() {
	    $('textarea').each(function() {
	        watchdog.create(this, {
	            // Editor configuration.
	        }).catch(handleSampleError);
	    });
	});
</script>