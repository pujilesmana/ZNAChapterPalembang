<section class="home">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="line top">
							<div>Super Mini Champion</div>
						</div>
						<ul class="item-list-round" data-magnific="gallery">
							<?php foreach ($SM->result() as $row) :?>
							<li>
								<strong><h5 style="text-align: center;"><?php echo $row->champion_nama?></h5></strong>
								<p style="text-align: center;"><?php echo $row->champion_id?></p>
								<a href="<?php echo base_url().'assets/images/'.$row->champion_gambar;?>" style="background-image: url('<?php echo base_url().'assets/images/'.$row->champion_gambar;?>');width: 255px;height: 348px;margin-right: 30px;margin-bottom: 60px "></a>
								<p style="text-align: center;"><?php echo $row->champion_ukuran?></p>
								<h6 style="text-align: center;"><?php echo $row->champion_owner?></h6>
								<h6 style="text-align: center;"><?php echo $row->champion_handling?></h6>
							</li>
							<?php endforeach ?>
						</ul>

						<div class="line top">
							<div>Mini Champion</div>
						</div>
						<ul class="item-list-round" data-magnific="gallery">
							<?php foreach ($M->result() as $row) :?>
							<li>
								<strong><h5 style="text-align: center;"><?php echo $row->champion_nama?></h5></strong>
								<p style="text-align: center;"><?php echo $row->champion_id?></p>
								<a href="<?php echo base_url().'assets/images/'.$row->champion_gambar;?>" style="background-image: url('<?php echo base_url().'assets/images/'.$row->champion_gambar;?>');width: 255px;height: 348px;margin-right: 30px;margin-bottom: 60px "></a>
								<p style="text-align: center;"><?php echo $row->champion_ukuran?></p>
								<h6 style="text-align: center;"><?php echo $row->champion_owner?></h6>
								<h6 style="text-align: center;"><?php echo $row->champion_handling?></h6>
							</li>
							<?php endforeach ?>
						</ul>

						<div class="line top">
							<div>Baby Champion</div>
						</div>
						<ul class="item-list-round" data-magnific="gallery">
							<?php foreach ($B->result() as $row) :?>
							<li>
								<strong><h5 style="text-align: center;"><?php echo $row->champion_nama?></h5></strong>
								<p style="text-align: center;"><?php echo $row->champion_id?></p>
								<a href="<?php echo base_url().'assets/images/'.$row->champion_gambar;?>" style="background-image: url('<?php echo base_url().'assets/images/'.$row->champion_gambar;?>');width: 255px;height: 348px;margin-right: 30px;margin-bottom: 60px "></a>
								<p style="text-align: center;"><?php echo $row->champion_ukuran?></p>
								<h6 style="text-align: center;"><?php echo $row->champion_owner?></h6>
								<h6 style="text-align: center;"><?php echo $row->champion_handling?></h6>
							</li>
							<?php endforeach ?>
						</ul>

						<div class="line top">
							<div>Junior Champion</div>
						</div>
						<ul class="item-list-round" data-magnific="gallery">
							<?php foreach ($J->result() as $row) :?>
							<li>
								<strong><h5 style="text-align: center;"><?php echo $row->champion_nama?></h5></strong>
								<p style="text-align: center;"><?php echo $row->champion_id?></p>
								<a href="<?php echo base_url().'assets/images/'.$row->champion_gambar;?>" style="background-image: url('<?php echo base_url().'assets/images/'.$row->champion_gambar;?>');width: 255px;height: 348px;margin-right: 30px;margin-bottom: 60px "></a>
								<p style="text-align: center;"><?php echo $row->champion_ukuran?></p>
								<h6 style="text-align: center;"><?php echo $row->champion_owner?></h6>
								<h6 style="text-align: center;"><?php echo $row->champion_handling?></h6>
							</li>
							<?php endforeach ?>
						</ul>

						<div class="line top">
							<div>Young Champion</div>
						</div>
						<ul class="item-list-round" data-magnific="gallery">
							<?php foreach ($Y->result() as $row) :?>
							<li>
								<strong><h5 style="text-align: center;"><?php echo $row->champion_nama?></h5></strong>
								<p style="text-align: center;"><?php echo $row->champion_id?></p>
								<a href="<?php echo base_url().'assets/images/'.$row->champion_gambar;?>" style="background-image: url('<?php echo base_url().'assets/images/'.$row->champion_gambar;?>');width: 255px;height: 348px;margin-right: 30px;margin-bottom: 60px "></a>
								<p style="text-align: center;"><?php echo $row->champion_ukuran?></p>
								<h6 style="text-align: center;"><?php echo $row->champion_owner?></h6>
								<h6 style="text-align: center;"><?php echo $row->champion_handling?></h6>
							</li>
							<?php endforeach ?>
						</ul>

						<div class="line top">
							<div>Grand Champion</div>
						</div>
						<ul class="item-list-round" data-magnific="gallery">
							<?php foreach ($G->result() as $row) :?>
							<li>
								<strong><h5 style="text-align: center;"><?php echo $row->champion_nama?></h5></strong>
								<p style="text-align: center;"><?php echo $row->champion_id?></p>
								<a href="<?php echo base_url().'assets/images/'.$row->champion_gambar;?>" style="background-image: url('<?php echo base_url().'assets/images/'.$row->champion_gambar;?>');width: 255px;height: 348px;margin-right: 30px;margin-bottom: 60px "></a>
								<p style="text-align: center;"><?php echo $row->champion_ukuran?></p>
								<h6 style="text-align: center;"><?php echo $row->champion_owner?></h6>
								<h6 style="text-align: center;"><?php echo $row->champion_handling?></h6>
							</li>
							<?php endforeach ?>
						</ul>
					</div>
				</div>
			</div>
</section>