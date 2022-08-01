<?php
if( ! function_exists('copyright_years_func') ):
    function copyright_years_func() {
        $year = date("Y");
        return $year;
    }
    add_shortcode( 'copyright_years', 'copyright_years_func' );
    endif;
if( ! function_exists('phone_number') ):
    function phone_number() {
        $phone_number = get_field('phone_number','option');
        return $phone_number;
    }
    add_shortcode('phone_number','phone_number');
    endif;
