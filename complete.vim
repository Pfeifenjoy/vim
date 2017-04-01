function! CompletionChain(findstart, base)
  if a:findstart
    " Test against the functions one by one
    for func in g:user_completion_chain
      let pos = call(func, [a:findstart, a:base])
      " If a function can complete the prefix,
      " remember the name and return the result from the function
      if pos >= 0
        let s:current_completion = func
        return pos
      endif
    endfor

    " No completion can be done
    unlet! s:current_completion
    return -1
  elseif exists('s:current_completion')
    " Simply pass the arguments to the selected function
    return call(s:current_completion, [a:findstart, a:base])
  else
    return []
  endif
endfunction

let g:user_completion_chain = ['emoji#complete', 'HTMLTagComplete']
set completefunc=CompletionChain
