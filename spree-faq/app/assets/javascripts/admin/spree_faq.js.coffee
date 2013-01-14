$ ->
  $('form').on 'click', '.add_fields', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp, time))
    event.preventDefault()

  $('form').on 'click', '.remove', (event) ->
    $(this).parent('.question').children(':hidden[id$=delete]').val(1)
    $(this).parent('.question').slideUp('slow')
    event.preventDefault()

  $('#new_question_link').click ->
    $('#questions').append(new_question_html.replace(/NEW_RECORD/g, $('#questions .question').size()))
    $('#questions .question:last .remove').click ->
      $(this).parent('.question').remove()
    $.scrollTo(jQuery('#questions .question:last'), 800)
    $('.question:last input:first').focus()
