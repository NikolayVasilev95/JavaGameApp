(function($){
  var userChoose;

  $('[data-selected]').on('click', function() {
    userChoose = $(this).attr('data-selected');
    $.ajax({
        method: 'GET',
        url: '/RockPaperSizerGame',
        data: {
            userChoice: userChoose
        },
        success: function(response) {
            var SplitResponse = response.split("\n");
            var result = SplitResponse[0];
            var pcChoice = SplitResponse[1];
            $('#result').html(result);
            if(pcChoice == 0){
              $("#pcChoice").attr("src","/img/Rock.png");
              console.log("PcChoice ", 0)
            } else if(pcChoice == 1){
              $("#pcChoice").attr("src","/img/Paper.png");
              console.log("PcChoice ", 1)
            } else if(pcChoice == 2){
              $("#pcChoice").attr("src","/img/Sizer.png");
              console.log("PcChoice ", 2)
            } else{
                console.log("Not existed choice!")
            }
            $(".MyButtonRockPaperSizer").attr('disabled','true');
            setTimeout(function(){
              $("#pcChoice").attr("src","/img/mysteryCard.png");
              $('#result').html("");
              $(".MyButtonRockPaperSizer").removeAttr('disabled');
            }, 2000);
//            console.log('response', response)
        },
        error: function(error) {
            console.log('error', error)
        }
    })
  });
})(jQuery);

