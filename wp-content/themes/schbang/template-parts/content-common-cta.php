<?php   
$custom_h1_page_title = get_field("custom_h1_page_title");
if ( is_404() ) { echo '<h1 class="main-heading text-center">404 Not Found </h1> '; } 			
else{
	if(!empty($custom_h1_page_title)) {  echo '<h1 class="main-heading text-center">'.$custom_h1_page_title.'</h1> '; } 
	else {  echo '<div class="main-heading text-center">'.get_the_title().'</div> '; }
}