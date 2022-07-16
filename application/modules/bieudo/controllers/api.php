<?php 
require APPPATH . '/libraries/REST_Controller.php';
class Api extends REST_Controller {
	private $start = 0;
	private $lenght = 10;
	function __construct(){
		parent::__construct();
		$this->load->library('mongo_db', array('activate'=>'primary'));
	}
	public function list_get(){
		$record = $this->mongo_db->select(array('status'))->offset($this->start)->limit($this->lenght)->get('cdrdb');
		debug($record->count); die;
	}
}
?>