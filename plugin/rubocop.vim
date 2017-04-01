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
    let s:rubocop_command = s:RubocopCmd()
  else
    let s:rubocop_command = s:RubocopCmd(). " " . a:path
  endif

  " echom s:rubocop_command
  let l:results = system(s:rubocop_command)

  let l:rubocop_results = split(l:results, "\n")

  if !empty(l:rubocop_results)
    cexpr l:rubocop_results
    copen
  else
    echom "No errors! bravo!"
  endif
endfunction

function! s:RubocopCmd()
  let l:rubocop_command = 'rubocop --format emacs'
  let l:root = getcwd()
  let l:gemfile_path = root . "/Gemfile"
  if filereadable(l:gemfile_path)
    let l:body = join(readfile(l:gemfile_path), "\n")
    let l:bundle_path = matchstr(l:body, "rubocop")
    if !empty(l:bundle_path)
      let l:rubocop_command = 'rubocop --format emacs'
    else
      let l:rubocop_command = 'bundle exec rubocop --format emacs'
    endif
  endif

  return l:rubocop_command
endfunction
