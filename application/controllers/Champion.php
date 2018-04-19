<?php
	class Champion extends CI_Controller{
		function __construct(){
			parent::__construct();
			$this->load->model('m_champion');
			$this->load->model('m_album');
			$this->load->library('upload');
		}

		function index(){
		$y['title'] = 'Champion KOI';
		$x['SM']=$this->m_champion->get_champion_by_album_id(11);
		$x['M']=$this->m_champion->get_champion_by_album_id(12);
		$x['B']=$this->m_champion->get_champion_by_album_id(13);
		$x['J']=$this->m_champion->get_champion_by_album_id(14);
		$x['Y']=$this->m_champion->get_champion_by_album_id(15);
		$x['G']=$this->m_champion->get_champion_by_album_id(16);
		$this->load->view('v_header',$y);
		$this->load->view('v_champion',$x);
		$this->load->view('v_footer');
		}

	}
?>