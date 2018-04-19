<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title><?php echo $title?></title>
		<!-- Bootstrap -->
		<link rel="stylesheet" href="<?php echo base_url()?>assets/scripts/bootstrap/bootstrap.min.css">
		<!-- IonIcons -->
		<link rel="stylesheet" href="<?php echo base_url()?>assets/scripts/ionicons/css/ionicons.min.css">
		<!-- Toast -->
		<link rel="stylesheet" href="<?php echo base_url()?>assets/scripts/toast/jquery.toast.min.css">
		<!-- OwlCarousel -->
		<link rel="stylesheet" href="<?php echo base_url()?>assets/scripts/owlcarousel/dist/assets/owl.carousel.min.css">
		<link rel="stylesheet" href="<?php echo base_url()?>assets/scripts/owlcarousel/dist/assets/owl.theme.default.min.css">
		<!-- Magnific Popup -->
		<link rel="stylesheet" href="<?php echo base_url()?>assets/scripts/magnific-popup/dist/magnific-popup.css">
		<link rel="stylesheet" href="<?php echo base_url()?>assets/scripts/sweetalert/dist/sweetalert.css">
		<!-- Custom style -->
		<link rel="stylesheet" href="<?php echo base_url()?>assets/css/style.css">
		<link rel="stylesheet" href="<?php echo base_url()?>assets/css/skins/all.css">
		<!-- <link rel="stylesheet" href="<?php echo base_url()?>assets/css/demo.css"> -->
	</head>
	<style type="text/css">
	.background {
		background: url('<?php echo base_url()?>assets/images/ampera.jpg') repeat center;
	}
		  
	</style>
	<body class="skin-orange">
		<header class="primary">
			<div class="firstbar background" style="padding-top: 0px;padding-bottom: 0px">
				<div class="container">
					<div class="row">
						<div class="col-md-5 col-sm-12">					
						</div>
						<div class="col-md-6 col-sm-12">
							<div class="brand">
								<a href="<?php echo base_url()?>">
									<img src="<?php echo base_url()?>assets/images/logo.png" alt="Magz Logo">
								</a>
							</div>						
						</div>
						<div class="col-md-3 col-sm-12 text-right">	
						</div>
					</div>
				</div>
			</div>

			<!-- Start nav -->
			<nav class="menu">
				<div class="container">
					<div class="brand">
						<a href="<?php echo base_url()?>">
							<img src="<?php echo base_url()?>assets/images/logo.png" alt="Magz Logo" style="width:54%;">
						</a>
					</div>
					<div class="mobile-toggle">
						<a href="#" data-toggle="menu" data-target="#menu-list"><i class="ion-navicon-round"></i></a>
					</div>
					<div class="mobile-toggle">
						<a href="#" data-toggle="sidebar" data-target="#sidebar"><i class="ion-ios-arrow-left"></i></a>
					</div>
					<div id="menu-list">
						<ul class="nav-list" style="margin-left: -32px">
							<li class="for-tablet nav-title"><a>Menu</a></li>
							<li><a href="<?php echo base_url()?>">Home</a></li>
							<li class="dropdown magz-dropdown">
								<a href="#">About Us <i class="ion-ios-arrow-right"></i></a>
								<ul class="dropdown-menu">
									<li><a href="<?php echo base_url()?>Visimisi">Visi & Misi</a></li>
									<li class="dropdown magz-dropdown">
										<a href="#">Struktur Organisasi <i class="ion-ios-arrow-right"></i></a>
										<ul class="dropdown-menu">
											<li><a href="<?php echo base_url()?>Struktur_organisasi/Palembang">Palembang</a></li>
											<li><a href="<?php echo base_url()?>Struktur_organisasi/OKI">OKI</a></li>
											<li><a href="<?php echo base_url()?>Struktur_organisasi/Pagar_Alam">Pagar Alam</a></li>
											<li><a href="<?php echo base_url()?>Struktur_organisasi/Banyuasin">Banyuasin</a></li>
											<li><a href="<?php echo base_url()?>Struktur_organisasi/Baturaja">Baturaja</a></li>
											<li><a href="<?php echo base_url()?>Struktur_organisasi/Empat_Lawang">Empat Lawang</a></li>
											<li><a href="<?php echo base_url()?>Struktur_organisasi/Lubuk_Linggau">Lubuk Linggau</a></li>
										</ul>
									</li>
								</ul>
							</li>

							<li class="dropdown magz-dropdown">
								<a href="#">Gallery <i class="ion-ios-arrow-right"></i></a>
								<ul class="dropdown-menu">
									<li><a href="<?php echo base_url()?>Gallery">Artikel Koi</a></li>
									<li><a href="<?php echo base_url()?>Gallery/photo">Photo</a></li>
								</ul>
							</li>
							<li><a href="<?php echo base_url()?>Champion">Champion</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- End nav -->
		</header>