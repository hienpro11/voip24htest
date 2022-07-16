<?php
class Sip2 extends MY_Controller{
	function __construct(){
		parent::__construct();
		
	}
	public function index(){
		$this->parser->parse('sip2_index');
	}
	
	
} 
?>