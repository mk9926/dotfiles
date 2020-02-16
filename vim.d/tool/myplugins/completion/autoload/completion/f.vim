"   symbol_list : list of dictionary
"       'word'  :   symbol
"       'info'  :   definition of this symbol
"       'name'  :   name of symbol.
"                   input word matches this string,
"                   and then replace it with symbol.

let s:symbol_list = [
      \ {
      \   'word' : '<|',
      \   'info' : '(<|) : (''a -> ''b) -> ''a -> ''b',
      \   'name' : 'pipeleft'
      \ },
      \ {
      \   'word' : '|>',
      \   'info' : '(|>) : ''a -> (''a -> ''b) -> ''b',
      \   'name' : 'piperight'
      \ },
      \ {
      \   'word' : '->',
      \   'info' : 'Builtin operator : implement.',
      \   'name' : 'impl'
      \ },
      \ {
      \   'word' : '<<',
      \   'info' : '(<<) : (''b -> ''c) -> (''a -> ''b) -> ''a -> ''c',
      \   'name' : 'compo'
      \ },
      \ {
      \   'word' : '>>',
      \   'info' : '(>>) : (''a -> ''b) -> (''b -> ''c) -> ''a -> ''c',
      \   'name' : 'compoafter'
      \ },
      \ {
      \   'word' : '=',
      \   'info' : '(=) : ''a -> ''a -> boolean',
      \   'name' : 'eq'
      \ },
      \ {
      \   'word' : '<>',
      \   'info' : '(<>) : ''a -> ''a -> boolean',
      \   'name' : 'noteq'
      \ },
      \ {
      \   'word' : '<=',
      \   'info' : '(<=) : ''a -> ''a -> boolean',
      \   'name' : 'le'
      \ },
      \ {
      \   'word' : '>=',
      \   'info' : '(>=) : ''a -> ''a -> boolean',
      \   'name' : 'ge'
      \ },
      \ ]

function! completion#f#Keyword_Completion(findstart, base)
    "   a:findstart == 1 -> 補完開始位置決定
    "               == 0 -> 補完候補決定
    if a:findstart == 1
        let prev_col = col('.') - 1
        let last_word = matchstr(getline('.')[0:prev_col - 1], '\v\w+\W?$')
        let prefix_len = len(last_word)
        let start_pos = prev_col - prefix_len
        return prefix_len <= 0 ? -3 : start_pos
    else
        let items = {   'words' : [], 'reflesh' : 'always'}
        for m in s:symbol_list
            if m['name'] =~ '^' . a:base[0:len(a:base) - 1]
                call add(items['words'], m)
            endif
        endfor
        return items
    endif
endfunction
