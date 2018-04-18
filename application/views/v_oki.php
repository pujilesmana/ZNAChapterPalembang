<?php
	error_reporting(0);
    $b=$data->row_array();
    $img=base_url().'assets/images/'.$b['tulisan_gambar'];
    $title=$b['tulisan_judul'];
    $date=$b['tanggal'];
    $kategori=$b['tulisan_kategori_nama'];
    $deskripsi=strip_tags($b['tulisan_isi']);
    $isi=$b['tulisan_isi'];


?>

		<section class="home">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-sm-12 col-xs-12">
						<h2><?php echo $title?></h2>

						<?php echo $isi?>

					</div>
					</div>
			</div>
		</section>
				
