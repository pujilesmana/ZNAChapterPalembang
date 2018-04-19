<?php
	class Struktur_organisasi extends CI_Controller{
		function __construct(){
			parent::__construct();
			
			$this->load->model('m_kategori');
			$this->load->model('m_tulisan');
			$this->load->model('m_pengguna');
			$this->load->library('upload');
		}

		function index(){
		$this->load->view('v_header');
		$this->load->view('v_home');
		$this->load->view('v_sidebar');
		$this->load->view('v_footer');
		}

		function Palembang(){
		$y['title'] = 'Struktur Organisasi Palembang';
		$x['data']=$this->m_tulisan->get_berita_by_kode(1);
		$this->load->view('v_header',$y);
		$this->load->view('v_palembang',$x);	
		$this->load->view('v_footer');
		}

		function OKI(){
		$y['title'] = 'Struktur Organisasi OKI';
		$x['data']=$this->m_tulisan->get_berita_by_kode(2);
		$this->load->view('v_header',$y);
		$this->load->view('v_oki',$x);
		$this->load->view('v_footer');
		}

		function Pagar_Alam(){
		$y['title'] = 'Struktur Organisasi Pagar Alam';
		$x['data']=$this->m_tulisan->get_berita_by_kode(4);
		$this->load->view('v_header',$y);
		$this->load->view('v_pagaralam',$x);
		$this->load->view('v_footer');
		}

		function Banyuasin(){
		$y['title'] = 'Struktur Organisasi Banyuasin';
		$x['data']=$this->m_tulisan->get_berita_by_kode(5);
		$this->load->view('v_header',$y);
		$this->load->view('v_banyuasin',$x);
		$this->load->view('v_footer');
		}

		function Baturaja(){
		$y['title'] = 'Struktur Organisasi Baturaja';
		$x['data']=$this->m_tulisan->get_berita_by_kode(3);
		$this->load->view('v_header',$y);
		$this->load->view('v_baturaja',$x);		
		$this->load->view('v_footer');
		}

		function Lubuk_Linggau(){
		$y['title'] = 'Struktur Organisasi Lubuk Linggau';
		$x['data']=$this->m_tulisan->get_berita_by_kode(7);
		$this->load->view('v_header',$y);
		$this->load->view('v_lubuklinggau',$x);
		$this->load->view('v_footer');
		}

		function Empat_Lawang(){
		$y['title'] = 'Struktur Organisasi Empat Lawang';
		$x['data']=$this->m_tulisan->get_berita_by_kode(6);
		$this->load->view('v_header',$y);
		$this->load->view('v_empatlawang',$x);
		$this->load->view('v_footer');
		}
	}
?>