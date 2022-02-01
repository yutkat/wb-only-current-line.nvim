if exists('g:loaded_wb_only_current_line')
  finish
endif
let g:loaded_wb_only_current_line = 1

function! s:get_global_map(name, mode) abort
  let s:arg = maparg(a:name, a:mode, 0 , 1)
  if  has_key(s:args, "buffer") && s:args.buffer == 0
    let s:org_map = mapcheck(a:name, a:mode)
    if !empty(s:org_map)
      return s:org_map
    endif
  endif
  return a:name
endfunction

if !exists("g:disable_wb_only_current_line_mappings")
  let s:org_map = s:get_global_map("w", "n")
  execute "nnoremap <silent> w :<C-u>call wb_only_current_line#motion('n', \"" . s:org_map . "\", 'k$')<CR>"
  let s:org_map = s:get_global_map("w", "v")
  execute "vnoremap <silent> w :<C-u>call wb_only_current_line#motion('v', \"" . s:org_map . "\", 'k$')<CR>"

  let s:org_map = s:get_global_map("W", "n")
  execute "nnoremap <silent> W :<C-u>call wb_only_current_line#motion('n', \"" . s:org_map . "\", 'k$')<CR>"
  let s:org_map = s:get_global_map("W", "v")
  execute "vnoremap <silent> W :<C-u>call wb_only_current_line#motion('v', \"" . s:org_map . "\", 'k$')<CR>"

  let s:org_map = s:get_global_map("b", "n")
  execute "nnoremap <silent> b :<C-u>call wb_only_current_line#motion('n', \"" . s:org_map . "\", 'j^')<CR>"
  let s:org_map = s:get_global_map("b", "v")
  execute "vnoremap <silent> b :<C-u>call wb_only_current_line#motion('v', \"" . s:org_map . "\", 'j^')<CR>"

  let s:org_map = s:get_global_map("B", "n")
  execute "nnoremap <silent> B :<C-u>call wb_only_current_line#motion('n', \"" . s:org_map . "\", 'j^')<CR>"
  let s:org_map = s:get_global_map("B", "v")
  execute "vnoremap <silent> B :<C-u>call wb_only_current_line#motion('v', \"" . s:org_map . "\", 'j^')<CR>"
endif
