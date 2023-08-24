$(document).ready(function() {
   
    $("#registrationForm").on("submit", function(event) {
     
      var alertMessage = $("<div class='alert alert-success'>¡Formulario enviado exitosamente!</div>");
      $(".modal-content").prepend(alertMessage); 
      setTimeout(function() {
        alertMessage.remove(); 
      }, 5000);
    });

   
    $(".close-btn").on("click", function() {
      $(".modal-container").hide(); 
    });
  });