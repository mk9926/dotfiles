"   directive_word_list :
"       'word'  :   completion word
"       'info'  :   information
"       'input' :   inputed word matches this string,
"                   and then replace it with 'word'.


let s:directive_word_list = [
            \    {
            \        'word'  :   '#include<',
            \        'info'  :   '',
            \        'input' :   'include'
            \    },
            \    {
            \        'word'  :   '#define',
            \        'info'  :   '',
            \        'input' :   'define'
            \    },
            \    {
            \        'word'  :   '#if',
            \        'info'  :   '',
            \        'input' :   'if'
            \    },
            \    {
            \        'word'  :   '#ifdef',
            \        'info'  :   '',
            \        'input' :   'ifdef'
            \    },
            \    {
            \        'word'  :   '#endif',
            \        'info'  :   '',
            \        'input' :   'endif'
            \    },
            \    {
            \        'word'  :   '#pragma',
            \        'info'  :   '',
            \        'input' :   'pragma'
            \    }
            \]

"   header_file_list    :
"       'word'  :   filename
"       'info'  :   example of functions declared in the header
"       'input' :   
"


let s:header_file_list = [
    {
        'word'  :   'stdio.h',
        'info'  :   'printf, FILE',
        'input' :   'stdio.h',
    },
    {
        'word'  :   'stdlib.h',
        'info'  :   'random, time',
        'input' :   'stdlib.h',
    },
    {
        'word'  :   'math.h',
        'info'  :   'sin, M_PI',
        'input' :   'math.h',
    },
    {
        'word'  :   'unistd.h',
        'info'  :   'usleep',
        'input' :   'unistd.h',
    }
]





