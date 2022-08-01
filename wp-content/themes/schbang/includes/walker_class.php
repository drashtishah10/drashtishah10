<?php
class My_Walker_Nav_Menu extends Walker_Nav_Menu {
     private $curItem;
    public $exclude;
    public $view;
    public $thumbsize;
    public $licount;
    public function __construct( $exclude = null , $view = 'desktop' , $thumbsize = 'full' , $licount = 0) {
        $this->exclude = $exclude;
        $this->view = $view;
        $this->thumbsize = $thumbsize;
        $this->licount = $licount;
    }
    function start_lvl(&$output, $depth = 0, $args = array()) {       
         $class='';
        $indent = str_repeat("\t", $depth);
        if($depth != 0 ){  $div = "";  }
        else if($depth == 0){                
            $div = '<div class="megdropdown-menu submenu"><div class="shp-product-submenu">';
            $class = 'menudropdown-list';
			
        }
        $output .= $div."\n$indent <ul class='".$class."' >\n";
    }
   
    function end_lvl(&$output, $depth=0, $args=array()) {
        if($depth != 0){  $close_div = ""; }
        else if($depth == 0){ 
           $close_div .='</div></div>';
        }  
        $output .= "</ul>".$close_div."\n";
    }
    
}
?>
