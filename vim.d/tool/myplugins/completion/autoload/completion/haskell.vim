"   symbol_list : list of dictionary
"       'word'  :   symbol
"       'abbr'  :   pop up
"       'menu'  :   pop up menu
"       'name'  :   name of symbol.
"                   input word matches this string,
"                   and then replace it with symbol.


let s:symbol_list = [
            \    {
            \        'word' : '->',
            \        'abbr' : '(->)',
            \        'menu' : ': * -> * -> *',
            \        'name' : 'impl'
            \    },
            \    {
            \        'word' : '=>',
            \        'abbr' : '(=>)',
            \        'menu' : '',
            \        'name' : 'restrict'
            \    },
            \    {
            \        'word' : '<-',
            \        'abbr' : '(<-)',
            \        'menu' : '',
            \        'name' : 'in'
            \    },
            \    {
            \        'word' : '<-',
            \        'abbr' : '(<-)',
            \        'menu' : '',
            \        'name' : 'bind'
            \    },
            \    {
            \        'word' : '>>=',
            \        'abbr' : '(>>=)',
            \        'menu' : ': (Monad m) => m a -> (a -> m b) -> m b',
            \        'name' : 'bind'
            \    }
            \]

function! completion#haskell#Keyword_Completion(findstart, base)
    "   a:findstart == 1 -> 補完開始位置決定
    "               == 0 -> 補完候補決定
    if a:findstart == 1
        let prev_col = col('.') - 1
        let last_word = matchstr(getline('.')[0:prev_col - 1], '\v\w+\W?$')
        "debug  O.K.
        "let g:wasawasa = last_word
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
