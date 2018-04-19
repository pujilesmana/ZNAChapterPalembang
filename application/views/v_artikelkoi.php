<section class="home">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<ul class="item-list-round" data-magnific="gallery">
							<?php foreach ($data->result() as $row) :?>
							<li><a href="<?php echo base_url().'assets/images/'.$row->galeri_gambar;?>" style="background-image: url('<?php echo base_url().'assets/images/'.$row->galeri_gambar;?>');width: 350px;height: 400px;margin-right: 30px;margin-bottom: 60px"></a></li>
							<?php endforeach ?>
						</ul>
					</div>
					
				</div>
				<div class="col-md-12 text-center">
		            <?php echo $page;?>
		        
		          </div>
			</div>
		</section>