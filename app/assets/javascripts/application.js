// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require jquery3
//= require popper
//= require bootstrap
//= require toastr
//= require_tree .


$(document).on('turbolinks:load', function() {

/*------------------Function Sumar Totales-------------------------*/
  var sumarTotales= function(event){

    var total = 0;
    var cantInput = 1

    var contador=$("#formulas .cantidad").length
    contador = parseFloat(contador)

    for (var i = 0; i < contador; i++) {

      var valores = $('.cantidad:eq('+i+')').val()
      valores = parseFloat(valores)
      total = total + valores

      if (isNaN(total)) {
        
      } else {
        $("#total").val(total)
      }

    }
    //$("#formulas .cantidad").each(function (){
    //  var cantidad =$(this).find('.cantida').val()

    //  })




  }
/*---------------------/Function Sumar Totales----------------------------*/





/*---------------------Ejecutar Function Sumar Totales al iniciar la pagina----------------------------*/
$('.cantidad').focusout(function(event) {
  /*Fucntion Totales*/
    sumarTotales();
  /*/Function Totalse*/
});
/*---------------------/Ejecutar Function Sumar Totales al iniciar la pagina----------------------------*/





/*------------------Eliminar Fila Formulas-------------------------*/
  $('form').on('click', '.remove_record', function(event) {
    $(this).prev('input[type=hidden]').val('1');
    $(this).closest('tr').remove();
    /*Fucntion Totales*/
    sumarTotales();
    /*/Function Totalse*/
    return event.preventDefault();
  });
/*-----------------/Eliminar Fila Formulas------------------------------*/



/*------------------Agrergar Fila Formulas------------------------------*/
  $('form').on('click', '.add_fields', function(event) {
    var regexp, time;
    time = new Date().getTime();
    regexp = new RegExp($(this).data('id'), 'g');
    $('.fields').append($(this).data('fields').replace(regexp, time));

    $('.cantidad').focusout(function(event) {
      /*Fucntion Totales*/
        sumarTotales();
      /*/Function Totalse*/
    });
    return event.preventDefault();
  });
/*---------------------/Agregar Formulas-------------------------------*/





});
