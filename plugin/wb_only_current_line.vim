if exists('g:loaded_wb_only_current_line')
  finish
endif
let g:loaded_wb_only_current_line = 1

if !exists("g:disable_wb_only_current_line_mappings")
  let s:org_map = mapcheck("w", "n")
  if empty(s:org_map)
    let s:org_map = "w"
  endif
  execute "nnoremap <silent> w :<C-u>call wb_only_current_line#motion('n', \"" . s:org_map . "\", 'k$')<CR>"
  let s:org_map = mapcheck("w", "v")
  if empty(s:org_map)
    let s:org_map = "w"
  endif
  execute "vnoremap <silent> w :<C-u>call wb_only_current_line#motion('v', \"" . s:org_map . "\", 'k$')<CR>"

  let s:org_map = mapcheck("W", "n")
  if empty(s:org_map)
    let s:org_map = "W"
  endif
  execute "nnoremap <silent> W :<C-u>call wb_only_current_line#motion('n', \"" . s:org_map . "\", 'k$')<CR>"
  let s:org_map = mapcheck("W", "v")
  if empty(s:org_map)
    let s:org_map = "W"
  endif
  execute "vnoremap <silent> W :<C-u>call wb_only_current_line#motion('v', \"" . s:org_map . "\", 'k$')<CR>"

  let s:org_map = mapcheck("b", "n")
  if empty(s:org_map)
    let s:org_map = "b"
  endif
  execute "nnoremap <silent> b :<C-u>call wb_only_current_line#motion('n', \"" . s:org_map . "\", 'j^')<CR>"
  let s:org_map = mapcheck("b", "v")
  if empty(s:org_map)
    let s:org_map = "b"
  endif
  execute "vnoremap <silent> b :<C-u>call wb_only_current_line#motion('v', \"" . s:org_map . "\", 'j^')<CR>"

  let s:org_map = mapcheck("B", "n")
  if empty(s:org_map)
    let s:org_map = "B"
  endif
  execute "nnoremap <silent> B :<C-u>call wb_only_current_line#motion('n', \"" . s:org_map . "\", 'j^')<CR>"
  let s:org_map = mapcheck("B", "v")
  if empty(s:org_map)
    let s:org_map = "B"
  endif
  execute "vnoremap <silent> B :<C-u>call wb_only_current_line#motion('v', \"" . s:org_map . "\", 'j^')<CR>"
endif
