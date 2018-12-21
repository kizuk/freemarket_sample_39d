$(document).on('turbolinks:load', function() {
  $(function(){
    $('.owl-item-dot-inner img').mouseover(function(){
    $(this).toggleClass("active_image");
    var $thisImg = $(this).attr('src');
    var $thisAlt = $(this).attr('alt');
    $('.large_image').attr({src: $thisImg, alt: $thisAlt});
    });

  }, false);
});
