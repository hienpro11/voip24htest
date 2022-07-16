<?php
class Test extends MY_Controller{
    function __construct() {
      parent::__construct();
      $this->load->model('asterisktrial_model');
    }
    public function make_sip(){
      $trial_sip = $this->asterisktrial_model->trial_sip();
      debug($trial_sip);
    }
    
	
    public function index(){
      $new_arr = array();
      for($i=0;$i<10;$i++){
        $new_arr[] = $i;
      }
      $color =  $this->getRGBColorString($new_arr);
      foreach($color as $c){
        echo '<span style="width: 100px;height: 100px;background:'.$c.';float: left;padding: 10px;margin-left: 10px;margin-right: 10px;margin-top: 10px;margin-bottom: 10px;"></span>';
      }
      // debug($color);
    }
		private function getRGBColorString( $array )
    {
        $indexColor = round( 255 / count( $array ) );
        $iterator = 1;
        $arrayOfRGB = array();
        foreach($array as $item)
        {   
            $arrayOfRGB[] = $this->rgb_to_hex("rgb(" . ( $indexColor * $iterator ) . ",". ( $indexColor * $iterator ) .",". ( $indexColor * $iterator ) .")");
            $iterator++;
        }  

        return $arrayOfRGB;
    }
    private function rgb_to_hex($rgba){
        if ( strpos( $rgba, '#' ) === 0 ) {
            return $rgba;
        }

        preg_match( '/^rgba?[\s+]?\([\s+]?(\d+)[\s+]?,[\s+]?(\d+)[\s+]?,[\s+]?(\d+)[\s+]?/i', $rgba, $by_color );

        return sprintf( '#%02x%02x%02x', $by_color[1], $by_color[2], $by_color[3] );
    }
}
?>

