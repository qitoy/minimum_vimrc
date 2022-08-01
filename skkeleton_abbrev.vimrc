syntax enable
filetype plugin indent on

let s:dir = expand('<sfile>:h') . '/repos/'
execute 'set runtimepath+=' . s:dir . 'denops.vim'
execute 'set runtimepath+=' . s:dir . 'skkeleton'

call skkeleton#register_kanatable('rom', {'/': 'abbrev'})

