<?php 
class Sip3 extends MY_Controller{
	function __construct(){
		parent:: __construct();
		
	}
	public function index(){
		$this->parser->parse('sip3_index');
	}
	
}
?>