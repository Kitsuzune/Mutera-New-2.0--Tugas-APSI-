<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Register extends CI_Controller {
	function __construct()
	{
		// parent::__construct();
        //         $this->load->library('form_validation');
        parent::__construct();
		$this->load->model('m_model');
	}

	public function index()
	{
		$this->load->view('register');
	}


    public function prosesregis()
	{
		if($pass = $this->input->post('password', TRUE)) {
        $data = array(
			'namaLengkap' => $this->input->post('nama', TRUE),
			'username' => $this->input->post('username', TRUE),
			'password' => password_hash($pass, PASSWORD_DEFAULT),
			'status' => $this->input->post('status', TRUE),
			'md4' => md5($pass),
		);
		$this->m_model->simpan('users', $data);
        echo 2; 
        }else {
            echo 0;
        }
	}

	public function logoutProses(){
        $this->session->sess_destroy();
        redirect('login');
    }
}
