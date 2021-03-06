let g:lightline = {
  \   'colorscheme': 'nord',
  \   'active': {
  \     'left':[ [ 'mode', 'paste' ],
  \              [ 'cocstatus', 'gitbranch', 'readonly', 'filename', 'modified' ]
  \     ]
  \   },
  \   'component': {
  \     'lineinfo': ' %3l:%-2v',
  \   },
  \   'component_function': {
  \     'gitbranch': 'fugitive#head',
  \     'cocstatus': 'coc#status',
  \   },
  \   'separator': {
  \     'left': '', 'right': ''
  \   },
  \   'subseparator': {
  \     'left': '', 'right': ''
  \   }
  \ }

autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()


" " ==============================================================================
" " Status Line
" " source: https://www.reddit.com/r/vim/comments/6b7b08/my_custom_statusline/
" " ==============================================================================
" function! ActiveStatus()
"   let statusline=""
"   " let statusline.="%(%{'help'!=&filetype?'\ \ '.bufnr('%'):''}\ %)"
"   let statusline.="%1*"
"   let statusline.="\ %{LinterStatus()}\ "
"   let statusline.="%2*"
"   let statusline.="%{fugitive#head()!=''?'\ \ '.fugitive#head().'\ ':''}"
"   let statusline.="%3*"
"   let statusline.="\ %<"
"   let statusline.="%f"
"   let statusline.="\ "
"   let statusline.="%{&modified?'\ \ +':''}"
"   let statusline.="%{&readonly?'\ \ ':''}"
"   let statusline.="%4*"
"   let statusline.="%="
"   let statusline.="%3*"
"   let statusline.="\ %{''!=#&filetype?&filetype:'none'}"
"   let statusline.="%(\ %{(&bomb\|\|'^$\|utf-8'!~#&fileencoding?'\ '.&fileencoding.(&bomb?'-bom':''):'').('unix'!=#&fileformat?'\ '.&fileformat:'')}%)"
"   let statusline.="%(\ \ %{&modifiable?(&expandtab?'et\ ':'noet\ ').&shiftwidth:''}%)"
"   let statusline.="\ "
"   let statusline.="%2*"
"   let statusline.="%1*"
"   let statusline.="\ %2v"
"   let statusline.="\ %3p%%\ "
"   return statusline
" endfunction

" function! InactiveStatus()
"   let statusline=""
"   " let statusline.="%(%{'help'!=&filetype?'\ \ '.bufnr('%').'\ \ ':'\ '}%)"
"   let statusline.="%{fugitive#head()!=''?'\ \ '.fugitive#head().'\ ':'\ '}"
"   let statusline.="\ %<"
"   let statusline.="%f"
"   let statusline.="%{&modified?'\ \ +':''}"
"   let statusline.="%{&readonly?'\ \ ':''}"
"   let statusline.="%="
"   let statusline.="\ %{''!=#&filetype?&filetype:'none'}"
"   let statusline.="%(\ %{(&bomb\|\|'^$\|utf-8'!~#&fileencoding?'\ '.&fileencoding.(&bomb?'-bom':''):'').('unix'!=#&fileformat?'\ '.&fileformat:'')}%)"
"   let statusline.="%(\ \ %{&modifiable?(&expandtab?'et\ ':'noet\ ').&shiftwidth:''}%)"
"   let statusline.="\ \ "
"   let statusline.="\ %2v"
"   let statusline.="\ %3p%%\ "
"   return statusline
" endfunction

" function! LinterStatus() abort
"   let l:counts = ale#statusline#Count(bufnr(''))

"   let l:all_errors = l:counts.error + l:counts.style_error
"   let l:all_non_errors = l:counts.total - l:all_errors

"   return l:counts.total == 0 ? '⬥ ok' : printf(
"   \   '⚠ %d | ✖ %d',
"   \   all_non_errors,
"   \   all_errors
"   \)
" endfunction

" set laststatus=2
" set statusline=%!ActiveStatus()

" hi User1 guibg=#98C379 guifg=#002E4D
" hi User2 guibg=#3E4452 guifg=#ABB2BF
" hi User3 guibg=#3E4452 guifg=#ABB2BF
" hi User4 guibg=#282C34 guifg=#d0d0d0
" " hi User1 guibg=#80CCFF guifg=#002E4D
" " hi User2 guibg=#162955 guifg=#80CCFF
" " hi User3 guibg=#001F33 guifg=#162955
" " hi User4 guibg=#001F33 guifg=#d0d0d0
" " hi User1 guibg=#afd700 guifg=#005f00
" " hi User2 guibg=#005f00 guifg=#afd700
" " hi User3 guibg=#222222 guifg=#005f00
" " hi User4 guibg=#222222 guifg=#d0d0d0

" augroup status
"   autocmd!
"   autocmd WinEnter * setlocal statusline=%!ActiveStatus()
"   autocmd WinLeave * setlocal statusline=%!InactiveStatus()
" augroup END
