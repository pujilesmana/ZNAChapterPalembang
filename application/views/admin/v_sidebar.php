<?php 
 
    $query=$this->db->query("SELECT * FROM tbl_inbox WHERE inbox_status='1'");
    $jum_pesan=$query->num_rows();

      $cek1 = "";
      $cek2 = "";
      $cek3 = "";
      $cek4 = "";
      $cek5 = "";
      $cek6 = "";
      $cek7 = "";
      $cek8 = "";
      $cek9 = "";
      $cek10 = "";
     
      
      if(isset($side)){
         switch ($side) {
          case 1:
            $cek1 = "active";
            break;
            case 2:
            $cek2 = "active";
            break;
            case 3:
            $cek3 = "active";
            break;
            case 4:
            $cek4 = "active";
            break;
            case 5:
            $cek5 = "active";
            break;
            case 6:
            $cek6 = "active";
            break;
            case 7:
            $cek7 = "active";
            break;
            case 8:
            $cek8 = "active";
            break;
            case 9:
            $cek9 = "active";
            break;
            case 10:
            $cek10 = "active";
            break;

         }
      }
    ?>
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu ">
        <li class="header ">Menu Utama</li>
        <li class="<?php echo $cek1?>">
          <a href="<?php echo base_url().'admin/dashboard'?>">
            <i class="fa fa-home"></i> <span>Dashboard</span>
            <span class="pull-right-container">
              <small class="label pull-right"></small>
            </span>
          </a>
        </li>
        <li class="treeview <?php echo $cek2?>">
          <a href="#">
            <i class="fa fa-newspaper-o"></i>
            <span>Berita</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="<?php echo base_url().'admin/tulisan'?>"><i class="fa fa-list"></i> List Berita</a></li>
            <li><a href="<?php echo base_url().'admin/tulisan/add_tulisan'?>"><i class="fa fa-thumb-tack"></i> Post Berita</a></li>
<!--             <li><a href="<?php echo base_url().'admin/kategori'?>"><i class="fa fa-wrench"></i> Kategori</a></li> -->
          </ul>
        </li>
        <li class="<?php echo $cek3?>">
          <a href="<?php echo base_url().'admin/pengguna'?>">
            <i class="fa fa-users"></i> <span>Pengguna</span>
            <span class="pull-right-container">
              <small class="label pull-right"></small>
            </span>
          </a>
        </li>
        <!-- <li class="<?php echo $cek5?>">
          <a href="<?php echo base_url().'admin/pengumuman'?>">
            <i class="fa fa-volume-up"></i> <span>Pengumuman</span>
            <span class="pull-right-container">
              <small class="label pull-right"></small>
            </span>
          </a>
        </li> -->
        <li class="treeview <?php echo $cek6?>">
          <a href="#">
            <i class="fa fa-download"></i>
            <span>File</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="<?php echo base_url().'admin/files'?>"><i class="fa fa-download"></i> Download</a></li>
            <!-- <li><a href="<?php echo base_url().'admin/kategori_file'?>"><i class="fa fa-clone "></i> Kategori File</a></li> -->
          </ul>
        </li>
        <li class="treeview <?php echo $cek7?>">
          <a href="#">
            <i class="fa fa-camera"></i>
            <span>Gallery</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <!-- <li><a href="<?php echo base_url().'admin/album'?>"><i class="fa fa-clone"></i> Album</a></li> -->
            <li><a href="<?php echo base_url().'admin/galeri'?>"><i class="fa fa-picture-o"></i> Photos</a></li>
            <li><a href="<?php echo base_url().'admin/video'?>"><i class="fa fa-clone"></i> Video</a></li>
          </ul>
        </li>

        <li class="<?php echo $cek8?>">
          <a href="<?php echo base_url().'admin/guru'?>">
            <i class="fa fa-graduation-cap"></i> <span>Data Guru</span>
            <span class="pull-right-container">
              <small class="label pull-right"></small>
            </span>
          </a>
        </li>

        <li class="treeview <?php echo $cek9?>">
          <a href="#">
            <i class="fa fa-user"></i>
            <span>Kesiswaan</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="<?php echo base_url().'admin/siswa'?>"><i class="fa fa-users"></i> Data Siswa</a></li>
<!--             <li><a href="#"><i class="fa fa-star-o"></i> Prestasi Siswa</a></li> -->
            
          </ul>
        </li>
        
        <li class="<?php echo $cek10?>">
          <a href="<?php echo base_url().'admin/inbox'?>">
            <i class="fa fa-envelope"></i> <span>Inbox</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-green"><?php echo $jum_pesan;?></small>
            </span>
          </a>
        </li>

         <li>
          <a href="<?php echo base_url().'administrator/logout'?>">
            <i class="fa fa-sign-out"></i> <span>Sign Out</span>
            <span class="pull-right-container">
              <small class="label pull-right"></small>
            </span>
          </a>
        </li>
        
       
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>