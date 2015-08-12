let g:ins_rand = vital#of('vital').import('Random.Xor128')
call g:ins_rand.srand(localtime())
inoremap <f4> <c-r>=g:ins_rand.rand()<cr>
