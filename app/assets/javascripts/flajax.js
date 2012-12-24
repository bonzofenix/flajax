// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

 $(document).ajaxComplete(function(event, request){
  $(['Error','Warning','Notice','Message']).each(function(i, header){
     alertbox = $('.x-flash-' +header.toLowerCase())
     value = request.getResponseHeader('X-Flash-' + header);
     if(value){
        alertbox.fadeIn().find('span.text').html(value);
    }
  });
});
