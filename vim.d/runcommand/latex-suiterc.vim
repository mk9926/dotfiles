let g:Tex_FormatDependency_pdf = 'dvi,pdf'
let g:Tex_CompileRule_dvi = 'platex --interaction=nonstopmode $*'
let g:Tex_CompileRule_pdf = 'dvipdfmx $*.dvi'
let g:Tex_Folding = 0
let g:Tex_EnvironmentMaps = 0
let g:tex_conceal = ''
let g:Imap_UsePlaceHolders = 0
let g:Tex_CatchVisMapErrors = 0
let g:Tex_Leader2 = 'z'

set makeprg='make'
