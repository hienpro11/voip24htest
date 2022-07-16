<?php
defined('BASEPATH') OR exit('No direct script access allowed');

if(!function_exists('debug')){
	function debug($string = ''){
		echo '<pre>';
			var_dump($string);
		echo '</pre>';
	}
}
if(!function_exists('getObjectId')){
	function getObjectId($param) {
		return $param->{'$id'};
	}
}
