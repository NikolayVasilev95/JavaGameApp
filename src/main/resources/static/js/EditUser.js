(function($){
  $('[toggle-edit]').on('click', function() {
    $('.editing').toggleClass('editing')
    $($(this).parents()[1]).toggleClass('editing');
  });
  $('[data-selected]').on('click', function() {
    var currBtn = $(this).attr('data-selected');
    var SplitCurrBtn = currBtn.split(" ");
    var currBtnType = SplitCurrBtn[0];
    var currBtnNum = SplitCurrBtn[1];
    if(currBtnType == "edit"){
      var userNameElementId = "name" + currBtnNum;
      var userMailElementId = "mail" + currBtnNum;
      var userPasswordElementId = "password" + currBtnNum;
      var userIsAdminElementId = "isAdmin" + currBtnNum;
      var userName = $("#" + userNameElementId).val();
      var userMail = $("#" + userMailElementId).val();
      var userPassword = $("#" + userPasswordElementId).val();
      var userIsAdmin = $("#" + userIsAdminElementId).val() === 'true'; // returns true or false
      var userForEdit = {
          id: currBtnNum,
          name: userName,
          mail: userMail,
          password: userPassword,
          isAdmin: userIsAdmin
      }
      $.post({
        url: "/editUser",
        dataType: 'json',
        contentType: 'application/json',
        data: JSON.stringify(userForEdit),
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