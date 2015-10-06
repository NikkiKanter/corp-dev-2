$ ->

  $('.img-container').hover () ->
    $(this).find('img').toggle()

  $("#phone-number").click () ->
    @phone_number = '(312) 595-9240'
    $('#phone-number').html('<h2>' + @phone_number + '</h2>');

  $(".info-popover").popover
      html: true
      placement: 'top'
  
  $(".info-popover-providers").popover
      html: true
      placement: 'bottom'
      trigger: "hover"

  $(".email-form").on "ajax:success", (e, data, status, xhr) ->
    $("#demo-request").modal('hide')
    $("#email_modal").modal('show')
    $("#email_modal").find("h4").text(data.notice)
    $(".empty").val('')
  
  $("#provider-video")
    .on "show.bs.modal", (e) ->
      iframe = $('#provider-player')[0]
      player = $f(iframe)
      player.api('play')
    .on "hide.bs.modal", (e) ->
      iframe = $('#provider-player')[0]
      player = $f(iframe)
      player.api('pause')
