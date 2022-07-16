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
		$this->load->model("auth_model");
	}
	private function _render(){
		return array('status'=>$this->status,'recordsTotal'=>$this->recordsTotal,'recordsFiltered'=>$this->recordsTotal,'data'=>$this->data,'message'=>$this->message);
	}
	public function list_post(){
		$p = $this->input->post();
		$where = array();
		if(isset($p['search']['value'])&&!empty($p['search']['value'])){
			$where['phone'] = $p['search']['value'];
		}
		if(isset($p['lenght'])&&!empty($p['lenght'])){
			$this->lenght = $p['lenght'];
		}
		if(isset($p['start'])&&!empty($p['start'])){
			$this->start = $p['start'];
		}
		$where['date_start'] = $p['date_start'];
		$where['date_end'] = $p['date_end'];
		$where['limit'] = $this->lenght;
		$where['offset'] = $this->start;
		if(!empty($p['type'])){ 
			$where['type'] = $p['type']; 
		}
		if(!empty($p['status'])){ 
			$where['status'] = $p['status']; 
		}	
		
		$res = $this->auth_model->gau2($where);
		$this->data = @$res['data']['response']['data'];
		$this->recordsTotal =(int)@$res['data']['response']['meta']['total'];
		$this->status = 1000;
		$this->message = 'message success';
		$this->response($this->_render());
	}
}
?>