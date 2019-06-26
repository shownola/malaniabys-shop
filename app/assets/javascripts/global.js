document.addEventListener("turbolinks:load", function(){
  var notification = document.quarySelector('.global-notification');

  if(notification){
    window.setTimeOut(function(){
      notification.style.display = 'none';
    }, 4000);
  }
});
