function! latex#before() abort
  let g:UltiSnipsExpandTrigger = '<tab>'
  let g:UltiSnipsJumpForwardTrigger = '<tab>'
  let g:UltiSnipsJumpBackwardTrigger = '<tab>'
  let g:tex_flavor='latex'
  let g:vimtex_view_method='zathura'
  let g:vimtex_quickfix_mode=0
  set conceallevel=1
  set wrap
  let g:tex_conceal='abdmg'
  autocmd BufWritePost *.md execute "!/home/andrea/.config/dwm-6.2/scripts/pandacompile.sh <afile>" | redraw!
endfunction
