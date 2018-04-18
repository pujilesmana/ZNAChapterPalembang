<?php
	class Home extends CI_Controller{
		function __construct(){
			parent::__construct();
			$this->load->model('m_kategori');
			$this->load->model('m_tulisan');
			$this->load->model('m_pengguna');
			$this->load->library('upload');
		
		}

		function index(){
		$y['title'] = 'ZNA Palembang Chapter';
		$x['data']=$this->m_tulisan->get_berita_by_kode(8);
		$this->load->view('v_header',$y);
		$this->load->view('v_home',$x);
		$this->load->view('v_sidebar');
		$this->load->view('v_footer');
	}
	}
?>