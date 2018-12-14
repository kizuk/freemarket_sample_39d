$(function() {

  $('#price-input-form').on('keyup', function() {
    var price = $(this).val();
    if (price !== "" &&  price >= 300 && price < 1000000) {
      var profit = Math.floor(price * 0.9);
      $('.calculation-result').text(profit);
    } else {
      $('.calculation-result').text("-");
    }
  });

  function previewFiles() {
    var preview = document.querySelector('img');//どこでプレビューするか指定。'img[name="preview"]'などにすればimg複数あっても指定できます。
    var file = document.querySelector('input[type=file]').files[0];//'input[type=file]'で投稿されたファイル要素の0番目を参照します。input[type=file]にmutipleがなくてもこのコードになります。
    var reader = new FileReader();

    reader.addEventListener("load", function () {
      preview.src = reader.result;//めちゃめちゃ長い文字列が引き渡されます。ユーザーのファイルパスに紐付かない画像情報だと思います。
    }, false);

    if (file) {
      reader.readAsDataURL(file);//ここでreaderのメソッドに引数としてfileを入れます。ここで、readerのaddEventListenerが発火します。
    }
  }
});
