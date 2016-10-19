<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function __construct(){
		parent:: __construct();

		$this->load->model('m_pegawai');
	}
	public function index()
	{
		$data['title']= 'CRUD CodeIgniter Pegawai';
		$data['sql'] = $this->m_pegawai->getPegawai();
		$this->load->view('header');
		$this->load->view('pegawai', $data);
		$this->load->view('footer');
	}

}
