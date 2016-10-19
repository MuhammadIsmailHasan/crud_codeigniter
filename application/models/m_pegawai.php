<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class m_pegawai extends CI_Model {

	public function getPegawai()
	{
		$sql = $this->db->query ("SELECT * FROM pegawai INNER JOIN kota ON pegawai.kota=kota.id INNER JOIN kelamin ON pegawai.kelamin=kelamin.id INNER JOIN posisi ON pegawai.id_posisi=posisi.id_posisi;");
		return $sql;
	}
}
