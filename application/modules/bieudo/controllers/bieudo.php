<?php
class Bieudo extends MY_Controller{
	
	function __construct(){
		parent:: __construct();
		
	}
	public function index(){
		$this->parser->parse('bieudo_index');
	}
} 
?>