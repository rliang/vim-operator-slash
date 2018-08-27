scriptencoding utf-8
if exists('g:loaded_operator_slash') | fini | en
let g:loaded_operator_slash = 1

let s:save_cpo = &cpo
set cpo&vim

call operator#user#define('slash', 'operator#slash#slash')
call operator#user#define('slash-word', 'operator#slash#slash_word')

let &cpo = s:save_cpo
unlet s:save_cpo
