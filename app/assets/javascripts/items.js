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
  $('input[type="file"]').on('change', function(){
    var len = $(this).prop('files');
    for (var i = 0; i < len; i++) {
     var file = $(this).target.files[i],
         find_img = $(this).parent().find('img'),
         filereader = new FileReader(),
         preview = $(".preview ul");

    if(find_img.length){
       find_img.nextAll().remove();
       find_img.remove();
    }

    var img = '<li class="img_view"><img alt="" class="img_preview"><p><a href="#" class="img_del">画像を削除する</a></p></li>';

    preview.append(img);

    filereader.onload = function() {
      preview.find('img').attr('src', filereader.result);
      img_del(preview);
      $(".visible-pc").remove();
    }
    filereader.readAsDataURL(fileprop);
  };

  function img_del(target){
    target.find("a.img_del").on('click',function(){
      var self = $(this),
          parentBox = self.parent().parent().parent();
      if(window.confirm('画像を削除します。\nよろしいですか？')){
        setTimeout(function(){
          parentBox.find('input[type=file]').val('');
          parentBox.find('.img_view').remove();
        } , 0);
      }
      return false;
    });
   }
 });
});














