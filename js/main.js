(function(){

  var timegreeting = document.querySelector('#greeting');


  function timeSwapper(){
    console.log(timegreeting.innerHTML);
    if(timegreeting.innerHTML == " Good Afternoon."){
      document.body.style.background = "url(images/afternoon.jpg)";
    } else if(timegreeting.innerHTML == " I hope you are having a good evening."){
      document.body.style.background = "url(images/evening.jpg)";
    } else if(timegreeting.innerHTML == " Good morning, I hope you have a good day."){
      document.body.style.background = "url(images/morning.jpg)";
    }
  }

  window.addEventListener('load', timeSwapper, false);

})();
