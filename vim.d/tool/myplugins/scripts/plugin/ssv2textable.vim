let s:seppattern_float = '\v(\d+(\.\d+)?)@<=[[:blank:],]+(\-?\d+(\.\d+)?)@='
let s:seppattern_string = '\v%(%(\w|\d)+)@<=[[:blank:],]+%(%(\w|\d)+)@='
let s:sepchar = '\&'
command! Ssv2TexTable exe '%s/' . s:seppattern_float . '/ ' . s:sepchar . ' /g'
