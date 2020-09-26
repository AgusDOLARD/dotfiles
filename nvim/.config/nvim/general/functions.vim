function! NewExercise()
    normal mm
    execute ":g/--\\s.*\\s--/y"
    execute "normal! `mP \<C-a>j"
endfunction

function! NavigateExercises(dir)
    execute "/--\\s.*\\s--/"
    if a:dir | execute 'normal NN' | endif
    normal zt
endfunction
