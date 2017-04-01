function! Rubocop()
  call s:RunRubocop(@%)
endfunction

function! RubocopAll()
  call s:RunRubocop("")
endfunction

function! s:RunRubocop(path)
  if empty(a:path)
    let s:rubocop_command = "rubocop "
  else
    let s:rubocop_command = "rubocop " . a:path
  endif

  echom s:rubocop_command
endfunction
