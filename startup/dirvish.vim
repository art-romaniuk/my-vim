autocmd BufEnter *
    \ if winnr('$') == 1 && (&bt == 'quickfix' || &ft == 'dirvish') |
    \   if len(filter(getbufinfo(), {_, b -> b.listed})) == 1 |
    \     quit |
    \   else |
    \     bd! |
    \   endif |
    \ endif
