<?php 
require APPPATH . '/libraries/REST_Controller.php';
class Api extends REST_Controller {
	private $recordsTotal = 0;
	private $recordsFiltered = 0;
	private $status = 2000;
	private $data = '';
	private $message = '';
	private $start = 0;
	private $lenght = 10;
	function __construct(){
		parent::__construct();
		$this->load->library('mongo_db', array('activate'=>'primary'));
	}
	private function _render(){
		return array('status'=>$this->status,'recordsTotal'=>$this->recordsTotal,'recordsFiltered'=>$this->recordsTotal,'data'=>$this->data,'message'=>$this->message);
	}
	public function list_post(){
		$p = $this->input->post();
		if(isset($p['lenght'])&&!empty($p['lenght'])){
			$this->lenght = $p['lenght'];
		}
		if(isset($p['start'])&&!empty($p['start'])){
			$this->start = $p['start'];
		}
		if(isset($p['type'])&&!empty($p['type'])){
			$where['type'] = $p['type'];
		}
		if(isset($p['status'])&&!empty($p['status'])){
			$where['status'] = $p['status'];
		}
		if(isset($p['src'])&&!empty($p['src'])){
			$where['src'] = $p['src'];
		}
		$where['calldate_time'] = array(
			'$gte' => strtotime($p['date_start']),
			'$lte' => strtotime($p['date_end'])
		);
		$record = $this->mongo_db->where($where)->offset($this->start)->limit($this->lenght)->get('cdrdb');
		if(isset($record)&&!empty($record)){
			foreach($record as $v){
				$result [] = array ('calldate'=>$v[calldate],'src'=>$v['src'],'dst'=>$v['dst'],'duration'=>$v['duration'],'disposition'=>$v['disposition'],'billsec'=>$v['billsec'],'type'=>$v['type'],'did'=>$v['did']);
			}
		}
		$this->data = $result;
		$this->recordsTotal = count($record);
		$this->recordsFiltered = count($record);
		$this->status = 1000;
		$this->message = 'message success';
		$this->response($this->_render());
	}
}
?>