// // Open the Modal
// function openModal() {
//     document.getElementById('myModal').style.display = "block";
//   }
  
//   // Close the Modal
//   function closeModal() {
//     document.getElementById('myModal').style.display = "none";
//   }
  
//   var slideIndex = 1;
//   showSlides(slideIndex);
  
//   // Next/previous controls
//   function plusSlides(n) {
//     showSlides(slideIndex += n);
//   }
  
//   // Thumbnail image controls
//   function currentSlide(n) {
//     showSlides(slideIndex = n);
//   }
  
//   function showSlides(n) {
//     var i;
//     var slides = document.getElementsByClassName("mySlides");
//     var dots = document.getElementsByClassName("demo");
//     var captionText = document.getElementById("caption");
//     if (n > slides.length) {slideIndex = 1}
//     if (n < 1) {slideIndex = slides.length}
//     for (i = 0; i < slides.length; i++) {
//       slides[i].style.display = "none";
//     }
//     for (i = 0; i < dots.length; i++) {
//       dots[i].className = dots[i].className.replace(" active", "");
//     }
//     slides[slideIndex-1].style.display = "block";
//     dots[slideIndex-1].className += " active";
//     captionText.innerHTML = dots[slideIndex-1].alt;
//   }


var openPhotoSwipe = function() {
  var pswpElement = document.querySelectorAll('.pswp')[0];

  //build items array now

  var items = [
    {
      src: '/images/Work/SITL.png',
      w:600,
      h: 515
    }, {
      src: '/images/Work/newsblast_custom_ad_2.jpg',
      w: 1275,
      h: 825
    }, {
      src: '/images/Work/pride_day.jpg',
      w: 1080,
      h: 1115
    }, {
      src: '/images/Work/thanksgiving.jpg',
      w: 490,
      h: 565
    }, {
      src: '/images/Work/waffle_day.jpg',
      w: 455,
      h:455
    }
  ];

  var options = {
    history:false,
    focus:false,

    showAnimationDuration: 0,
    hideAnimationDuration:0,

    index: 0

  };

  var gallery = new
  PhotoSwipe(pswpElement, PhotoswipeUI_Default, items, options);

  gallery.init();

openPhotoSwipe();

document.getElementById('btn').onclick = openPhotoSwipe;



}