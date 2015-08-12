"   symbol_list : list of dictionary
"       'word'  :   symbol
"       'info'  :   definition of this symbol
"       'name'  :   name of symbol.
"                   input word matches this string,
"                   and then replace it with symbol.
    	
let s:symbol_list = [
            \    {
            \        'word' : '\/',
            \        'info' : 'Inductive or (A B : Prop) : Prop := | or_intror : A -> or A B | or_introl : B -> or A B',
            \        'name' : 'or'
            \    },
            \    {
            \        'word' : '/\',
            \        'info' : 'Inductive and (A B : Prop) : Prop := conj : A -> B -> and A B',
            \        'name' : 'and'
            \    },
            \    {
            \        'word' : '->',
            \        'info' : 'Builtin operator : implement.',
            \        'name' : 'impl'
            \    },
            \    {
            \        'word' : '~',
            \        'info' : 'Definition not (A : Prop) := A -> False.',
            \        'name' : 'not'
            \    }
            \
            \]


function! completion#coq#Keyword_Completion(findstart, base)
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

