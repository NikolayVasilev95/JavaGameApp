(function($){

  $('[data-selected]').on('click', function() {
    var currBtn = $(this).attr('data-selected');
    var SplitCurrBtn = currBtn.split(" ");
    var currBtnType = SplitCurrBtn[0];
    var currBtnNum = SplitCurrBtn[1];
    if(currBtnType == "delete"){
        $.post({
            url: "/deleteUser",
            data: {
                userForDelete: currBtnNum
            },
            success: function(response) {
                $().redirect('/deleteUser', {
                    response
                });
                console.log('response', response)
            },
            error: function(error) {
                console.log('error', error)
            }
        });
    } else if(currBtnType == "edit"){
        $.post({
            url: "/editUser",
            data: {
                userForEdit: userForEdit
            },
            success: function(response) {
                $().redirect('/editUser', {
                    response
                });
                console.log('response', response)
            },
            error: function(error) {
                console.log('error', error)
            }
        });
    }
  });
})(jQuery);

