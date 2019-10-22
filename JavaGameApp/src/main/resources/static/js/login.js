(function($){
  str = $('#alert-danger').text();
     if($.trim(str) === "") {
       $('#alert-danger').hide();
     } else{
        $('#alert-danger').show();
     }
})(jQuery);