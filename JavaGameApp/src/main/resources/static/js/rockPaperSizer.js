(function($){
  var userChoose;

  $('[data-selected]').on('click', function() {
    userChoose = $(this).attr('data-selected');
    $.ajax({
        method: 'GET',
        url: '/home',
        data: {
            userChoice: userChoose
        },
        success: function(response) {
            $('#result').html(response);
//            console.log('response', response)
        },
        error: function(error) {
            console.log('error', error)
        }
    })
  });
})(jQuery);

