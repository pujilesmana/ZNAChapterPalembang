<?php
class M_champion extends CI_Model{

	function get_all_champion(){
		$hsl=$this->db->query("SELECT tbl_champion.*,album_nama FROM tbl_champion join tbl_album on champion_kategori=album_id ORDER BY champion_id DESC");
		return $hsl;
	}

	function simpan_champion($id,$nama,$ukuran,$owner,$handling,$gambar,$kategori){
		$this->db->trans_start();
            $this->db->query("INSERT into tbl_champion(champion_id,champion_nama,champion_ukuran,champion_owner,champion_handling,champion_gambar,champion_kategori) values ('$id','$nama','$ukuran','$owner','$handling','$gambar','$kategori')");
            $this->db->query("update tbl_album set album_count=album_count+1 where album_id='$kategori'");
        $this->db->trans_complete();
        if($this->db->trans_status()==true)
        return true;
        else
        return false;
	}
	
	function update_galeri($id,$c_id,$nama,$ukuran,$owner,$handling,$gambar,$kategori){
		$hsl=$this->db->query("UPDATE tbl_champion set champion_id = '$c_id', champion_nama='$nama',champion_ukuran='$ukuran',champion_owner='$owner',champion_handling='$handling',champion_gambar='$gambar' where id='$id'");
		return $hsl;
	}

	function update_galeri_tanpa_img($id,$c_id,$nama,$ukuran,$owner,$handling,$kategori){
		$hsl=$this->db->query("UPDATE tbl_champion set champion_id = '$c_id', champion_nama='$nama',champion_ukuran='$ukuran',champion_owner='$owner',champion_handling='$handling' where id='$id'");
		return $hsl;
	}
	function hapus_champion($kode,$album){
		$this->db->trans_start();
            $this->db->query("DELETE from tbl_champion where id='$kode'");
            $this->db->query("UPDATE tbl_album set album_count=album_count-1 where album_id='$kategori'");
        $this->db->trans_complete();
        if($this->db->trans_status()==true)
        return true;
        else
        return false;
	}


	//Front-End
	function get_champion_by_album_id($idalbum){
		$hsl=$this->db->query("SELECT tbl_champion.*,album_nama FROM tbl_champion join tbl_album on champion_kategori=album_id WHERE champion_kategori='$idalbum' ORDER BY id DESC");
		return $hsl;
	}
	
	

}