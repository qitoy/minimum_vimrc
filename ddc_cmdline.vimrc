syntax enable
filetype plugin indent on

let s:dir = expand('<sfile>:h') . '/repos/'
execute 'set runtimepath+=' . s:dir . 'denops.vim'
execute 'set runtimepath+=' . s:dir . 'ddc.vim'
execute 'set runtimepath+=' . s:dir . 'pum.vim'
execute 'set runtimepath+=' . s:dir . 'ddc-matcher_head'
execute 'set runtimepath+=' . s:dir . 'ddc-sorter_rank'
execute 'set runtimepath+=' . s:dir . 'ddc-cmdline'

call ddc#custom#patch_global('cmdlineSources', ['cmdline'])

call ddc#custom#patch_global('sourceOptions', {
\ '_': {
\   'matchers': ['matcher_head'],
\   'sorters': ['sorter_rank']
\ },
\})

call ddc#custom#patch_global('completionMenu', 'pum.vim')

call ddc#custom#patch_global('autoCompleteEvents', [
\  'InsertEnter', 'TextChangedI', 'TextChangedP',
\  'CmdlineEnter', 'CmdlineChanged',
\])

cnoremap <expr> <Tab>
\ pum#visible() ? '<Cmd>call pum#map#insert_relative(+1)<CR>' :
\ ddc#manual_complete()

call ddc#enable()

call ddc#enable_cmdline_completion()
