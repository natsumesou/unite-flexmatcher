let s:save_cpo = &cpo
set cpo&vim

function! unite#filters#flexmatcher#define()
  return s:matcher
endfunction

let s:matcher = {
  \ 'name' : 'flexmatcher',
  \ 'description' : 'matcher unite result prefix partial match',
  \}

function! s:matcher.filter(candidates, context)"{{{
  if a:context.input == ''
    return a:candidates
  endif

  let candidates = a:candidates
  for input in split(a:context.input, '\\\@<! ')
    let input = substitute(input, '\\ ', ' ', 'g')

    let inputexpr = ''
    let i = 0
    while i < strlen(input)
        let inputexpr = inputexpr.input[i].'.*'
        let i += 1
    endwhile
    let expr = 'v:val.word =~ ' . string(inputexpr)

    let candidates = filter(copy(candidates), expr)
  endfor

  return candidates
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
