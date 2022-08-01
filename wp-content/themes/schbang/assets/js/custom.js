jQuery(document).ready(function($) {
    jQuery('img').removeAttr('width').removeAttr('height');  
    $("p:empty").remove();
    $('textarea').removeAttr('cols').removeAttr('rows');
    $("input[type='tel']").keydown(function(e) {
        // Allow: backspace, delete, tab, escape, enter and .
        if ($.inArray(e.keyCode, [46, 8, 9, 27, 13]) !== -1 ||
            // Allow: Ctrl+A, Command+A
            (e.keyCode === 65 && (e.ctrlKey === true || e.metaKey === true)) ||
            // Allow: home, end, left, right, down, up
            (e.keyCode >= 35 && e.keyCode <= 40)) {
            // let it happen, don't do anything
            return;
        }
        // Ensure that it is a number and stop the keypress
        if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
            e.preventDefault();
        }
    });
    $('.name_field').bind('copy paste', function (e) {
  e.preventDefault();
});
    $(".name_field").keydown(function(e) {
        // Allow: backspace, delete, tab, escape, enter and .
        if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 32]) !== -1 ||
            // Allow: Ctrl+A, Command+A
            (e.keyCode === 65 && (e.ctrlKey === true || e.metaKey === true)) ||
            // Allow: home, end, left, right, down, up
            (e.keyCode >= 35 && e.keyCode <= 40)) {
            // let it happen, don't do anything
            return;
        }
        // Ensure that it is a number and stop the keypress
        if (((e.keyCode < 65 || e.keyCode > 90))) {
            e.preventDefault();
        }
    });
    $(".number_field").keydown(function (e) {
        // Allow: backspace, delete, tab, escape, enter and .
        if ($.inArray(e.keyCode, [46, 8, 9, 27, 13]) !== -1 ||
            // Allow: Ctrl+A, Command+A
            (e.keyCode === 65 && (e.ctrlKey === true || e.metaKey === true)) ||
            // Allow: home, end, left, right, down, up
            (e.keyCode >= 35 && e.keyCode <= 40)) {
            // let it happen, don't do anything
            return;
        }
        // Ensure that it is a number and stop the keypress
        if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
            e.preventDefault();
        }
    });
    
});

// form validation
jQuery("#schbang_test_form").validate({
    errorPlacement: function(error,element) {
      return true;
    },
    highlight: function(element) {
      $(element).addClass("error");
      $(element).parent('.input-group').addClass("error");
    },
    unhighlight: function(element) {
      $(element).removeClass("error");
      $(element).parent('.input-group').removeClass("error");
    },
    rules: {
        first_name: "required",
        email: {
          required: true,
          email: true,
          maxlength: 255
        },
        phone: {
            required: true,
            maxlength: 12
          },
    },
    submitHandler: function(form) {

        event.preventDefault();
        event.stopPropagation();

        var form = jQuery('#schbang_test_form');

        jQuery('.form-messages').hide();

        var first_name = $( '#first_name' ).val();
        var phone = $( '#phone' ).val();
        var email = $( '#email' ).val();
        var message = $( '#message' ).val();
 
        var data = {
            first_name: first_name,
            phone: phone,
            email: email,
            message: message
        };

        //var data = new FormData();
        console.log(data);
        //data.append( 'action', base_url+'/wp-json/schbang/v1/formdata' );
        
        var ajaxcall = $.ajax({
            method: "GET",
            url: POST_SUBMITTER.root + 'schbang/v1/formdata',
            data: JSON.stringify(data),
            contentType: false,
            processData: false,
            cache: false,
            beforeSend: function ( xhr ) {
                xhr.setRequestHeader( 'X-WP-Nonce', POST_SUBMITTER.nonce );
            },
            success : function( response ) {
                console.log( response );
                alert( POST_SUBMITTER.success );
            },
            fail : function( response ) {
                console.log( response );
                alert( POST_SUBMITTER.failure );
            }
 
        });
        
        // ajaxcall.done( function( response ) {
        //     if( response.data.success ) {
        //       jQuery("#donation_form")[0].reset();
        //       jQuery('.donation_loader').hide();
        //       jQuery('.form-messages').removeClass('alert-danger');
        //       jQuery('.form-messages').addClass('alert-success');
        //       jQuery('.form-messages').html(response.data.message);
        //       jQuery('.form-messages').show();
        //     } else {
        //       jQuery('.donation_loader').hide();
        //       jQuery('.form-messages').removeClass('alert-success');
        //       jQuery('.form-messages').addClass('alert-danger');
        //       jQuery('.form-messages').html(response.data.message);
        //       jQuery('.form-messages').show();
        //     }

        //     setTimeout(function() {
        //         jQuery('.form-messages').slideUp(1000);
        //     }, 5000);

        // });
        // ajaxcall.fail( function( response ) {
        //   // jQuery('.donation_loader').hide();
        //   console.log('fail');
        // });
    }
});