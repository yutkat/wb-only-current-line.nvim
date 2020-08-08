function! wb_only_current_line#motion(mode, motion, back_motion) abort
    if v:count
      execute "normal! " . v:count . a:motion
      return
    endif
    " Save the initial position
    if a:mode ==# 'v'
      echo a:mode
      normal! gv
    endif

    let initial_line=line('.')

    execute "normal! " . a:motion
    let new_line=line('.')

    if initial_line != new_line
        execute "normal! " . a:back_motion
    endif
endfunction
