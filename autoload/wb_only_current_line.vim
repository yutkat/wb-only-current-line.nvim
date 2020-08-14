function! wb_only_current_line#motion(mode, motion, back_motion) abort
    if a:motion =~ "^<"
        let noremap_flag = ""
    else
        let noremap_flag = "!"
    endif
    let motion_with_esc = eval('"' . fnameescape(a:motion) . '"')

    if v:count
      execute "normal" . noremap_flag . " " . v:count . motion_with_esc
      return
    endif
    " Save the initial position
    if a:mode ==# 'v'
      normal! gv
    endif

    let initial_line=line('.')

    execute "normal" . noremap_flag . " " . motion_with_esc
    let new_line=line('.')

    if initial_line != new_line
        execute "normal! " . a:back_motion
    endif
endfunction
