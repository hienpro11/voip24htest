<?php 
require APPPATH . '/libraries/REST_Controller.php';
class Api extends REST_Controller {
	private $recordsTotal = 0;
	private $recordsFiltered = 0;
	private $status = 2000;
	private $data = '';
	private $message = '';
	private $offset = 0;
	private $limit = 10;
	function __construct(){
		parent::__construct();
		$this->load->model("otp_model");
	}
	private function _render(){
		return array('status'=>$this->status,'recordsTotal'=>$this->recordsTotal,'recordsFiltered'=>$this->recordsTotal,'data'=>$this->data,'message'=>$this->message);
	}
	public function list_post(){
		$p = $this->input->post();
		$where = array();
		if(isset($p['limit'])&&!empty($p['limit'])){
			$this->limit = $p['limit'];
		}
		if(isset($p['offset'])&&!empty($p['offset'])){
			$this->offset = $p['offset'];
		}
		$where['limit'] = $this->limit;
		$where['offset'] = $this->offset;
		$res = $this->otp_model->otp1($where);
		$this->data = @$res['data']['response']['data'];
		$this->recordsTotal =(int)@$res['data']['response']['meta']['total'];
		$this->status = 1000;
		$this->message = 'message success';
		$this->response($this->_render());
	}
}
?>