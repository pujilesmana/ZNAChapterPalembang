<?php
class Champion extends CI_Controller{
	function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('administrator');
            redirect($url);
        };
		$this->load->model('m_album');
		$this->load->model('m_champion');
		$this->load->model('m_pengguna');
		$this->load->library('upload');
	}


	function index(){
		
		$x['data']=$this->m_champion->get_all_champion();
		$x['alb']=$this->m_album->get_all_album();
		$y['title'] = 'ZNA Chapter Palembang | Champion';
		$this->load->view('admin/v_champion',$x);
	}
	
	function simpan_champion(){
				$config['upload_path'] = './assets/images/'; //path folder
	            $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp';
	            $config['max_size']             = 0; //type yang dapat diakses bisa anda sesuaikan
	            // 	 //nama yang terupload nantinya

	            $this->upload->initialize($config);
	            if(!empty($_FILES['filefoto']['name']))
	            {
	                if ($this->upload->do_upload('filefoto'))
	                {
	                        $gbr = $this->upload->data();
	                        //Compress Image
	                        $config['image_library']='gd2';
	                        $config['source_image']='./assets/images/'.$gbr['file_name'];
	                        $config['create_thumb']= FALSE;
	                        $config['maintain_ratio']= FALSE;
	                        $config['quality']= '100%';
	                        // $config['width']= 800;
	                        // $config['height']= 1100;
	                        $config['new_image']= './assets/images/'.$gbr['file_name'];
	                        $this->load->library('image_lib', $config);
	                        $this->image_lib->resize();

	                        $gambar=$gbr['file_name'];
	                        $id=strip_tags($this->input->post('xid'));
	                        $nama=strip_tags($this->input->post('xnama'));
							$ukuran=strip_tags($this->input->post('xukuran'));
							$owner=strip_tags($this->input->post('xowner'));
							$handling=strip_tags($this->input->post('xhandling'));
							$kategori=strip_tags($this->input->post('xkategori'));
							$this->m_champion->simpan_champion($id,$nama,$ukuran,$owner,$handling,$gambar,$kategori);
							echo $this->session->set_flashdata('msg','success');
							redirect('admin/champion');
					}else{
	                    echo $this->session->set_flashdata('msg','warning');
	                    redirect('admin/champion');
	                }
	                 
	            }else{
					redirect('admin/champion');
				}
				
	}
	
	function update_champion(){
				
	            $config['upload_path'] = './assets/images/'; //path folder
	            $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp';
	            $config['max_size']             = 0; //type yang dapat diakses bisa anda sesuaikan
	            // $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

	            $this->upload->initialize($config);
	            if(!empty($_FILES['filefoto']['name']))
	            {
	                if ($this->upload->do_upload('filefoto'))
	                {
	                        $gbr = $this->upload->data();
	                        //Compress Image
	                        $config['image_library']='gd2';
	                        $config['source_image']='./assets/images/'.$gbr['file_name'];
	                        $config['create_thumb']= FALSE;
	                        $config['maintain_ratio']= FALSE;
	                        $config['quality']= '100%';
	                        // $config['width']= 800;
	                        // $config['height']= 1000;
	                        $config['new_image']= './assets/images/'.$gbr['file_name'];
	                        $this->load->library('image_lib', $config);
	                        $this->image_lib->resize();

	                        $gambar=$gbr['file_name'];
	                        $c_id=strip_tags($this->input->post('xid'));
	                        $nama=strip_tags($this->input->post('xnama'));
							$ukuran=strip_tags($this->input->post('xukuran'));
							$owner=strip_tags($this->input->post('xowner'));
							$handling=strip_tags($this->input->post('xhandling'));
							$kategori=strip_tags($this->input->post('xkategori'));
	                        $id=$this->input->post('kode');
							$images=$this->input->post('gambar');
							$path='./assets/images/'.$images;
							unlink($path);
							$this->m_champion->update_galeri($id,$c_id,$nama,$ukuran,$owner,$handling,$gambar,$kategori);
							echo $this->session->set_flashdata('msg','info');
							redirect('admin/champion');
	                    
	                }else{
	                    echo $this->session->set_flashdata('msg','warning');
	                    redirect('admin/champion');
	                }
	                
	            }else{
	            			$c_id=strip_tags($this->input->post('xid'));
	                        $nama=strip_tags($this->input->post('xnama'));
							$ukuran=strip_tags($this->input->post('xukuran'));
							$owner=strip_tags($this->input->post('xowner'));
							$handling=strip_tags($this->input->post('xhandling'));
							$kategori=strip_tags($this->input->post('xkategori'));
	                        $id=$this->input->post('kode');

							$this->m_champion->update_galeri_tanpa_img($id,$c_id,$nama,$ukuran,$owner,$handling,$kategori);
							echo $this->session->set_flashdata('msg','info');
							redirect('admin/champion');
	            } 

	}

	function hapus_champion(){
		$kode=$this->input->post('kode');
		$album=$this->input->post('album');
		$gambar=$this->input->post('gambar');
		$path='./assets/images/'.$gambar;
		unlink($path);
		$this->m_champion->hapus_champion($kode,$album);
		echo $this->session->set_flashdata('msg','success-hapus');
		redirect('admin/champion');
	}

}