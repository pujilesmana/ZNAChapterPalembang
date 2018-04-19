<?php
	class Visimisi extends CI_Controller{
		function __construct(){
			parent::__construct();
			$this->load->model('m_kategori');
			$this->load->model('m_tulisan');
			$this->load->model('m_pengguna');
			$this->load->library('upload');
		}

		function index(){
		$y['title'] = 'VISI & MISI ZNA Chapter Palembang';
		$x['data']=$this->m_tulisan->get_berita_by_kode(9);
		$this->load->view('v_header',$y);
		$this->load->view('v_visimisi',$x);
		$this->load->view('v_sidebar');	
		$this->load->view('v_footer');
		}
	}
?>