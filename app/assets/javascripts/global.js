$( document ).ready(function() {
  $(".input-image").change(function () { 
    readURL(this);
  });

  function readURL(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function (e) {
          $('#image').attr('src', e.target.result);
      }

      reader.readAsDataURL(input.files[0]);
    }
  }

  $(window).scroll(function() {
    if($(window).scrollTop() + $(window).height() == $(document).height()) {
      $(".footer").addClass("show");
    }else{
      $(".footer").removeClass("show");
    }
 });
});  
