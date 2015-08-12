
let s:Func_list = {
            \       'coq' : 'completion#coq#Keyword_Completion',
            \       'haskell' : 'completion#haskell#Keyword_Completion'
            \}

function! completion#set(type)
    if has_key(s:Func_list, a:type)
        exe 'set completefunc=' . s:Func_list[a:type]
    else
        echomsg "function for type \'" . a:type . "\' is not found."
    endif
endfunction

