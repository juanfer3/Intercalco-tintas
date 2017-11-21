# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$('.cantidad').focusout  (event) ->

  total = 0
  contador = $('#formulas .cantidad').length
  contador = parseInt(contador)
  cantInput = 1
  i = 0
  while i < contador
    valores = $('.cantidad:eq(' + i + ')').val()
    valores = parseInt(valores)
    total = total + valores
    console.log total
    toastr.info total
    i++
  #$("#formulas .cantidad").each(function (){
  #  var cantidad =$(this).find('.cantida').val()
  #  })
  $('#total').val total
