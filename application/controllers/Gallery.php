<?php
	class Gallery extends CI_Controller{
		function __construct(){
			parent::__construct();

			$this->load->model('m_galeri');
			$this->load->model('m_album');
			$this->load->library('upload');
		
		}

		function index(){
			$jum = $this->m_galeri->get_galeri_by_album_id(10);
			$page=$this->uri->segment(3);
	        if(!$page):
	            $offset = 0;
	        else:
	            $offset = $page;
	        endif;
	        $limit=6;
	        $config['base_url'] = base_url() . 'Gallery/index';
	        $config['total_rows'] = $jum->num_rows();
	        $config['per_page'] = $limit;
	        $config['uri_segment'] = 3;
	        $config['full_tag_open'] = "<ul class='pagination'>";
		    $config['full_tag_close'] = '</ul>';
		    $config['num_tag_open'] = '<li>';
		    $config['num_tag_close'] = '</li>';
		    $config['cur_tag_open'] = '<li class="active"><a href="#">';
		    $config['cur_tag_close'] = '</a></li>';
		    $config['prev_tag_open'] = '<li>';
		    $config['prev_tag_close'] = '</li>';
		    $config['first_tag_open'] = '<li>';
		    $config['first_tag_close'] = '</li>';
		    $config['last_tag_open'] = '<li>';
		    $config['last_tag_close'] = '</li>';
		    
		     $config['prev_link'] = '<i class="ion-ios-arrow-left"></i>';
		    $config['prev_tag_open'] = '<li>';
		    $config['prev_tag_close'] = '</li>';

		    $config['next_link'] = '<i class="ion-ios-arrow-right"></i>';
		    $config['next_tag_open'] = '<li>';
		    $config['next_tag_close'] = '</li>';
	        $this->pagination->initialize($config);
	        $x['page'] =$this->pagination->create_links();
			$x['data']=$this->m_galeri->gallery_perpage_by_id($offset,$limit,10);
			$x['alb']=$this->m_album->get_all_album();
			$y['title'] = 'Artikel KOI';
			$this->load->view('v_header',$y);
			$this->load->view('v_artikelkoi',$x);
			$this->load->view('v_footer');
		}

		function photo(){
			$jum = $this->m_galeri->get_galeri_by_album_id(4);
			$page=$this->uri->segment(3);
	        if(!$page):
	            $offset = 0;
	        else:
	            $offset = $page;
	        endif;
	        $limit=6;
	        $config['base_url'] = base_url() . 'Gallery/photo';
	        $config['total_rows'] = $jum->num_rows();
	        $config['per_page'] = $limit;
	        $config['uri_segment'] = 3;
	        $config['full_tag_open'] = "<ul class='pagination'>";
		    $config['full_tag_close'] = '</ul>';
		    $config['num_tag_open'] = '<li>';
		    $config['num_tag_close'] = '</li>';
		    $config['cur_tag_open'] = '<li class="active"><a href="#">';
		    $config['cur_tag_close'] = '</a></li>';
		    $config['prev_tag_open'] = '<li>';
		    $config['prev_tag_close'] = '</li>';
		    $config['first_tag_open'] = '<li>';
		    $config['first_tag_close'] = '</li>';
		    $config['last_tag_open'] = '<li>';
		    $config['last_tag_close'] = '</li>';
		    
		     $config['prev_link'] = '<i class="ion-ios-arrow-left"></i>';
		    $config['prev_tag_open'] = '<li>';
		    $config['prev_tag_close'] = '</li>';

		    $config['next_link'] = '<i class="ion-ios-arrow-right"></i>';
		    $config['next_tag_open'] = '<li>';
		    $config['next_tag_close'] = '</li>';
	        $this->pagination->initialize($config);
	        $x['page'] =$this->pagination->create_links();
			$x['data']=$this->m_galeri->gallery_perpage_by_id($offset,$limit,4);
			$x['alb']=$this->m_album->get_all_album();
			$y['title'] = 'Photo';
			$this->load->view('v_header',$y);
			$this->load->view('v_photo',$x);
			$this->load->view('v_footer');
		}
	}
?>