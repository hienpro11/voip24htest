<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

$config['mongo_db']['active'] = 'primary';
$config['mongo_db']['primary']['hostname'] = 'localhost';
$config['mongo_db']['primary']['no_auth'] = TRUE;
$config['mongo_db']['primary']['port'] = '27017';
$config['mongo_db']['primary']['username'] = '';
$config['mongo_db']['primary']['password'] = '';
$config['mongo_db']['primary']['database'] = 'admin';
$config['mongo_db']['primary']['db_debug'] = TRUE;
$config['mongo_db']['primary']['return_as'] = 'array';
$config['mongo_db']['primary']['write_concerns'] = (int)1;
$config['mongo_db']['primary']['journal'] = TRUE;
$config['mongo_db']['primary']['read_preference'] = NULL;
$config['mongo_db']['primary']['read_preference_tags'] = NULL;