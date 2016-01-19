module.exports =
  formatTheme: (user) ->
    if user.get('theme') is 'dark'
      classMethod = 'add'
    else
      classMethod = 'remove'

    $('html')["#{classMethod}Class"]('dark')
    $('#nav')["#{classMethod}Class"]('navbar-inverse')
