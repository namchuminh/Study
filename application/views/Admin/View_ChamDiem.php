<?php require(APPPATH.'views/Admin/layouts/header.php'); ?>
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
              <li class="breadcrumb-item"><a href="<?php echo base_url('admin/ket-qua/'); ?>">Kết Quả</a></li>
              <li class="breadcrumb-item active">Chấm Điểm</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- /.row -->
        <form class="row" method="POST">
          <div class="col-12">
            <div class="card">
            	<div class="card-header">
            		<h5>Chấm Điểm: Bài Thi Số <?php echo $list[0]['MaBaiThi']; ?></h5>
            	</div>
            	<div class="card-body">
				    	<?php for($i = 0; $i < count($list); $i++): ?>
					        <dl>
					            <dt>Câu <?php echo $i + 1 ?>: <?php echo $list[$i]['TenCauHoi'] ?></dt>
					            <br>
					            <dd>
					            	<textarea class="form-control"><?php echo $list[$i]['BaiLam'] ?></textarea>
					            </dd>
					        </dl>
				  		<?php endfor ?>
				  			<hr>
					  		<div class="row">
					  			<div class="col-md-5">
	                  <div class="form-group">
	                    <label for="ten">Số Câu Đúng</label>
	                    <input type="number" class="form-control" id="ten" name="socaudung" placeholder="Số câu đúng" required>
	                  </div>
	                </div>
	                <div class="col-md-5">
	                  <div class="form-group">
	                    <label for="ten">Chấm Điểm</label>
	                    <input type="number" class="form-control" id="ten" name="chamdiem" placeholder="Chấm điểm bài thi" required>
	                  </div>
	                </div>
	                <div class="col-md-2">
	                  <div class="form-group">
	                    <label for="ten">Chấm Điểm</label>
	                    <button class="btn btn-primary w-100" type="submit">Chấm Điểm</button>
	                  </div>
	                </div>
					  		</div>
				  			
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
  .ck-editor__editable {height: 250px;}
</style>
<?php require(APPPATH.'views/Admin/layouts/footer.php'); ?>
<script type="text/javascript" src="<?php echo base_url('public/ckeditor5/sample/script.js'); ?>"></script>
<script type="text/javascript">
	$(document).ready(function() {
	    $('textarea').each(function() {
	        watchdog.create(this, {
	            // Editor configuration.
	        }).catch(handleSampleError);
	    });
	});
</script>