function! Rubocop()
  if &filetype == "ruby"
    call s:RunRubocop(@%)
  else
    echo "Cannot run rubocop on non-ruby file"
  endif
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
