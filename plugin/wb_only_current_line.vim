if exists('g:loaded_wb_only_current_line')
  finish
endif
let g:loaded_wb_only_current_line = 1

if !exists("g:disable_wb_only_current_line_mappings")
  nnoremap <silent> w :<C-u>call wb_only_current_line#motion('n', 'w', 'k$')<CR>
  nnoremap <silent> W :<C-u>call wb_only_current_line#motion('n', 'W', 'k$')<CR>
  vnoremap <silent> w :<C-u>call wb_only_current_line#motion('v', 'w', 'k$')<CR>
  vnoremap <silent> W :<C-u>call wb_only_current_line#motion('v', 'W', 'k$')<CR>
  nnoremap <silent> b :<C-u>call wb_only_current_line#motion('n', 'b', 'j^')<CR>
  nnoremap <silent> B :<C-u>call wb_only_current_line#motion('n', 'B', 'j^')<CR>
  vnoremap <silent> b :<C-u>call wb_only_current_line#motion('v', 'b', 'j^')<CR>
  vnoremap <silent> B :<C-u>call wb_only_current_line#motion('v', 'B', 'j^')<CR>
endif
