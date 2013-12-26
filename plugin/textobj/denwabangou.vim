if exists('g:loaded_textobj_denwabangou')
    finish
endif

let s:save_cpo = &cpo
set cpo&vim

call textobj#user#plugin('denwabangou', {
            \ '-' : {
            \       'pattern' :
            \       '\<0\%([257-9]0-\=\d\{3}-\=\d-\=\d\{4}\|\%(12\|57\|99\)0-\=\d\{3}-\=\d\{3}\|800-\=\d\{3}-\=\d\{4}\|\%(\d-\=\)\{5}\d\{4}\)\>',
            \       'select' : ['id', 'ad']
            \   }
            \ })

let &cpo = s:save_cpo
unlet s:save_cpo

let g:loaded_textobj_denwabangou = 1
