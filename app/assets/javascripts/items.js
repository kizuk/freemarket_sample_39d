$(function() {
// 販売利益の計算・表示
  $('#price-input-form').on('keyup', function() {
    var price = $(this).val();
    if (price !== "" &&  price >= 300 && price < 1000000) {
      var profit = Math.floor(price * 0.9);
      $('.calculation-result').text(profit);
    } else {
      $('.calculation-result').text("-");
    }
  });

// 選択した画像のプレビュー表示
  $('.hidden1').on('change', function(){
      var file = $(this).prop('files')[0];
      var filereader = new FileReader();
      var imgHTML = '<li class="img_view"><img alt="" class="img_preview"></li>';

    $(".image_frame1").append(imgHTML);

    filereader.onload = function() {
      $(".image_frame1").find('img').attr('src', filereader.result); //ファイルが読み込まれた時にpreviewにappendしたimg要素に画像urlを設定する
      $(".visible-pc1").remove(); //クリックしてファイルをアップロードを消す
    }
    filereader.readAsDataURL(file);
    console.log(file);
  });

    $('.hidden2').on('change', function(){
      var file = $(this).prop('files')[0];
      var filereader = new FileReader();
      var imgHTML = '<li class="img_view"><img alt="" class="img_preview"></li>';

    $(".image_frame2").append(imgHTML);

    filereader.onload = function() {
      $(".image_frame2").find('img').attr('src', filereader.result);
      $(".visible-pc2").remove();
    }
    filereader.readAsDataURL(file);
  });

      $('.hidden3').on('change', function(){
      var file = $(this).prop('files')[0];
      var filereader = new FileReader();
      var imgHTML = '<li class="img_view"><img alt="" class="img_preview"></li>';

    $(".image_frame3").append(imgHTML);

    filereader.onload = function() {
      $(".image_frame3").find('img').attr('src', filereader.result);
      $(".visible-pc3").remove();
    }
    filereader.readAsDataURL(file);
  });

      $('.hidden4').on('change', function(){
      var file = $(this).prop('files')[0];
      var filereader = new FileReader();
      var imgHTML = '<li class="img_view"><img alt="" class="img_preview"></li>';

    $(".image_frame4").append(imgHTML);

    filereader.onload = function() {
      $(".image_frame4").find('img').attr('src', filereader.result);
      $(".visible-pc4").remove();
    }
    filereader.readAsDataURL(file);
  });
});













