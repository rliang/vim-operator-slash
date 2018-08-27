scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

fu! operator#slash#slash(motion_wise)
  let g:save = @s
  exe 'norm!' (a:motion_wise=="line" ? "'[V']" : "`[v`]").'"sy'
  let @/ = '\V\C'.substitute(escape(@s,'\'),'\n','\\n','g')
  if &hls | cal feedkeys(":let v:hlsearch=1\<cr>",'n') | en
  let @s = g:save
endf

fu! operator#slash#slash_word(motion_wise)
  let g:save = @s
  exe 'norm!' (a:motion_wise=="line" ? "'[V']" : "`[v`]").'"sy'
  let @/ = '\V\C\<'.substitute(escape(@s,'\'),'\n','\\n','g').'\>'
  if &hls | cal feedkeys(":let v:hlsearch=1\<cr>",'n') | en
  let @s = g:save
endf

let &cpo = s:save_cpo
unl s:save_cpo
