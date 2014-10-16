let s:seppattern_float = "\\v(\\d+(\\.\\d+)?)@<=[[:blank:],]+(\\d+(\\.\\d+)?)@="
let s:seppattern_string = "\\v%(%(\\w|\\d)+)@<=[[:blank:],]+%(%(\\w|\\d)+)@="
let s:sepchar = "\\&"
exe "%s/" . s:seppattern_string . "/ " . s:sepchar . " /g"
