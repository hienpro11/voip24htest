<?php defined('BASEPATH') OR exit('No direct script access allowed');

class REST_Controller extends MY_Controller {
	protected $rest_format = NULL;
	protected $methods = array();
	protected $request = NULL;
	protected $rest = NULL;
	private $_get_args = array();
	private $_post_args = array();
	private $_put_args = array();
	private $_delete_args = array();
	private $_args = array();
	public $_token = '';
	private $_allow = TRUE;
	private $_encryptKey = 'MIIJRAI898ANBgkqhkiG9w0BAQEFAASC';
	private $_supported_formats = array('xml' => 'application/xml','json' => 'application/json','jsonp' => 'application/javascript',);
	public function __construct(){
		parent::__construct(); ob_clean();
		$this->load->config('rest');
		if(!is_object($this->request)){$this->request= new stdClass();}
		$this->request->method = 'post';
		$this->request->body = NULL;
		$this->_post_args = $_POST;
		$this->request->body = file_get_contents('php://input');
		$this->_get_args = array_merge($this->_get_args, $this->uri->ruri_to_assoc());
		$this->_args = array_merge($this->_get_args, $this->_put_args, $this->_post_args, $this->_delete_args);
		$this->request->format = $this->_detect_format();
		$this->request->lang = $this->_detect_lang();
		
	}
	public function _remap($object_called)
	{
		$this->_log_request();
		$controller_method = $object_called . '_' . $this->request->method;
		$log_method = !(isset($this->methods[$controller_method]['log']) AND $this->methods[$controller_method]['log'] == FALSE);
		$use_key = !(isset($this->methods[$controller_method]['key']) AND $this->methods[$controller_method]['key'] == FALSE);
		if (!method_exists($this, $controller_method)){$this->response($this->_message(404),404); return;}
		$this->$controller_method();	
	}
	public function _message($code=400){
		$error = $this->mongo_db->where(array('code'=>$code))->find_one('message');
		if(!empty($error)){unset($error['_id']);}
		return array('error' => $error);
	}
	private function getObjectId($param){ return $param->{'$id'}; }
	public function response($data = array(),$http_code = null){
		$this->mongo_db->insert(config_item('rest_logs_table'),$data);
		$data['trace_id'] = $this->getObjectId($data['_id']);unset($data['_id']);
		if (empty($data) && $http_code === null){$http_code = 400;}else{
			is_numeric($http_code) OR $http_code = 200;
			if(method_exists($this, '_format_'.$this->request->format)){
				header('Content-type: '.$this->_supported_formats[$this->request->format]);
				$output = $this->{'_format_'.$this->request->format}($data);
			}else{$output = $data;}
		}
		header('HTTP/1.0: ' . $http_code);
		header('HTTP/1.1: ' . $http_code);
		header('Status: ' . $http_code);
		exit($output);
	}
	private function _detect_format()
	{
		$pattern = '/\.(' . implode('|', array_keys($this->_supported_formats)) . ')$/';
		if (preg_match($pattern, end($this->_get_args), $matches))
		{
			$last_key = end(array_keys($this->_get_args));
			$this->_get_args[$last_key] = preg_replace($pattern, '', $this->_get_args[$last_key]);
			$this->_args[$last_key] = preg_replace($pattern, '', $this->_args[$last_key]);
			return $matches[1];
		}
		if (isset($this->_args['format']) AND isset($this->_supported_formats))
		{
			return $this->_args['format'];
		}
		if ($this->config->item('rest_ignore_http_accept') === FALSE AND $this->input->server('HTTP_ACCEPT'))
		{
			foreach (array_keys($this->_supported_formats) as $format){
				if (strpos($this->input->server('HTTP_ACCEPT'), $format) !== FALSE)
				{
					if ($format != 'html' AND $format != 'xml'){return $format;}else{
						
						if ($format == 'html' AND strpos($this->input->server('HTTP_ACCEPT'), 'xml') === FALSE){return $format;}elseif ($format == 'xml' AND strpos($this->input->server('HTTP_ACCEPT'), 'html') === FALSE){return $format;}
					}
				}
			}
		}
		if (!empty($this->rest_format)){return $this->rest_format;}
		return config_item('rest_default_format');
	}
	private function _detect_lang()
	{
		if (!$lang = $this->input->server('HTTP_ACCEPT_LANGUAGE')){return NULL;}
		if (strpos($lang, ',') !== FALSE)
		{
			$langs = explode(',', $lang); $return_langs = array(); $i = 1;
			foreach ($langs as $lang){list($lang) = explode(';', $lang); $return_langs[] = trim($lang);}
			return $return_langs;
		}
		return $lang;
	}
	private function _log_request($authorized = FALSE)
	{
		return $this->mongo_db->insert(config_item('rest_logs_table'), array(
			'uri' => $this->uri->uri_string(),
			'method' => $this->request->method,
			'params' => serialize($this->_args),
			'ip_address' => $this->input->ip_address(),
			'time' => function_exists('now') ? now() : time(),
			'authorized' => $authorized
		));
	}
	public function post($key = NULL, $xss_clean = TRUE){
		if ($key === NULL){ return $this->_post_args; }
		return $this->input->post($key,$xss_clean);
	}
	private function _xss_clean($val, $bool){
		if (CI_VERSION < 2){return $bool ? $this->input->xss_clean($val) : $val;}else{return $bool ? $this->security->xss_clean($val) : $val;}
	}
	private function _prepare_bearer_auth(){
		$bearer_string = @$this->input->server('HTTP_AUTHORIZATION');	
		$response['status'] = 400;
		if(isset($bearer_string) && !empty($bearer_string)){			
			$token['data'] = str_replace('Bearer','',$bearer_string);
			$token['data'] = trim($token['data']);
			$tk = json_decode(@$this->global_model->giaima($token['data']));
			if(isset($tk) && !empty($tk)){
				if(isset($tk->ip) && !empty($tk->ip)){
					if(isset($tk->data) && !empty($tk->data)){
						if(isset($tk->expired) && !empty($tk->expired)){							
							$ip_address = $this->input->ip_address();
							if($ip_address == $tk->ip){
								if($tk->expired > date("dmY")){
									$response['status'] = 200;
									$this->_token = $tk;
								}else{$response['status'] = 401;}
							}else{$response['status'] = 403;}							
						}else{$response['status'] = 401;}
					}else{$response['status'] = 401;}
				}else{$response['status'] = 401;}
			}else{$response['status'] = 400;}
		}
		if((int)$response['status'] != 200){$this->response($this->_message($response['status']),$response['status']);}
	}
	private function _format_xml($data = array(), $structure = NULL, $basenode = 'xml'){
		if (ini_get('zend.ze1_compatibility_mode') == 1){ini_set('zend.ze1_compatibility_mode', 0);}
		if ($structure == NULL){$structure = simplexml_load_string("<?xml version='1.0' encoding='utf-8'?><$basenode />");}
		$data = $this->_force_loopable($data);
		foreach ($data as $key => $value){
			if (is_numeric($key)){$key = "item";}
			$key = preg_replace('/[^a-z_]/i', '', $key);
			if (is_array($value) OR is_object($value)){
				$node = $structure->addChild($key); $this->_format_xml($value, $node, $basenode);
			}else{is_bool($value) AND $value = (int) $value; $value = htmlspecialchars(html_entity_decode($value, ENT_QUOTES, 'UTF-8'), ENT_QUOTES, "UTF-8"); $UsedKeys[] = $key; $structure->addChild($key, $value);}
		}
		return $structure->asXML();
	}
	private function _format_json($data = array()){return json_encode($data);}
	private function _format_jsonp($data = array()){return $this->get('callback') . '(' . json_encode($data) . ')';}
	private function _force_loopable($data){ if ( ! is_array($data) AND ! is_object($data)){$data = (array) $data;} return $data; }
}

