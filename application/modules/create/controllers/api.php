<?php 
require APPPATH . '/libraries/REST_Controller.php';
class Api extends REST_Controller {
	private $recordsTotal = 0;
	private $recordsFiltered = 0;
	private $status = 2000;
	private $data = '';
	private $message = '';
	function __construct(){
		parent::__construct();
		$this->load->model("create_model");
		$this->load->model("otp_model");
	}
	private function _render(){
		return array('status'=>$this->status,'recordsTotal'=>$this->recordsTotal,'recordsFiltered'=>$this->recordsTotal,'data'=>$this->data,'message'=>$this->message);
	}
	public function create_post(){
		$p = $this->input->post();
		$where = array();
		if(isset($p['fullname'])&&!empty($p['fullname'])){
			$full_name = $p['fullname'];
		}
		if(isset($p['phone'])&&!empty($p['phone'])){
			$number_phone = $p['phone'];
		}
		if(isset($p['email'])&&!empty($p['email'])){
			$email = $p['email'];
		}
		if(isset($p['privacy'])&&!empty($p['privacy'])){
			$privacy = $p['privacy'];
		}
		$where['full_name'] = $full_name;
		$where['number_phone'] = $number_phone;
		$where['email'] = $email;
		$where['privacy'] = $privacy;
		$res = $this->create_model->create($where);
		$this->data = @$res['data']['response']['data'];
		$this->recordsTotal =(int)@$res['data']['response']['meta']['total'];
		$this->status = 1000;
		$this->message = 'message success';
		$this->response($this->_render());
	}
}
?>