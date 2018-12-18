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
  $('input[type="file"]').on('change', function(){ //ファイル選択ボタンを
    var len = $(this).prop('files').length; //読み込んだファイルの数を変数lenに代入
    console.log(len);
    for (var i = 0; i < len; i++) {
    console.log(i);
      var file = $(this).prop('files')[i]; //ファイルを取得して変数fileに代入=
      var filereader = new FileReader();
      var imgHTML = '<li class="img_view"><img alt="" class="img_preview"><p><a href="#" class="img_del">画像を削除する</a></p></li>';

    $(".preview ul").append(imgHTML);

    filereader.onload = function() {
      $(".preview ul").find('img').attr('src', filereader.result); //ファイルが読み込まれた時にpreviewにappendしたimg要素に画像urlを設定する
      $(".visible-pc").remove(); //クリックしてファイルをアップロードを消す
    }
    filereader.readAsDataURL(file);
  };

  // function img_del(target){
  //   target.find("a.img_del").on('click',function(){
  //     var self = $(this),
  //         parentBox = self.parent().parent().parent();
  //     if(window.confirm('画像を削除します。\nよろしいですか？')){
  //       setTimeout(function(){
  //         parentBox.find('input[type=file]').val('');
  //         parentBox.find('.img_view').remove();
  //       } , 0);
  //     }
  //     return false;
  //   });
  //  }
 });
});














