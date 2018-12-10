$(function(){
  $('owl-item-dot').on('mouseover', function() {
    $(this).addClass(".active");

  })
})



// マウスホバーした要素のimg取得して
// attrでつけかえる

// .activeのクラスを付与
// removeClass
// addClassでやる


$('.owl-item-dot').addedClass('active', function(){
  console.log('OK');
});
