<?php 
class Create extends MY_Controller{
	function __construct(){
		parent:: __construct();
		
	}
	public function index(){
		$this->parser->parse('create_index');
	}
	
}
?>