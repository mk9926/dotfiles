let s:seppattern = "\v(\d+(\.\d+)?)@<=[[:blank:],]+(\d+(\.\d+)?)@="
let s:sepchar = "\&"
exe "%s/" . s:seppattern . "/ " . s:sepchar . " /g"
