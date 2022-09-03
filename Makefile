skkeleton_abbrev: denops.vim skkeleton
ddc_cmdline: denops.vim ddc.vim pum.vim ddc-matcher_head ddc-sorter_rank ddc-cmdline

denops.vim:
	rm -rf repos/denops.vim
	git clone https://github.com/vim-denops/denops.vim.git repos/denops.vim

skkeleton:
	rm -rf repos/skkeleton
	git clone https://github.com/vim-skk/skkeleton.git repos/skkeleton

ddc.vim:
	rm -rf repos/ddc.vim
	git clone https://github.com/Shougo/ddc.vim.git repos/ddc.vim

pum.vim:
	rm -rf repos/pum.vim
	git clone https://github.com/Shougo/pum.vim.git repos/pum.vim

ddc-matcher_head:
	rm -rf repos/ddc-matcher_head
	git clone https://github.com/Shougo/ddc-matcher_head.git repos/ddc-matcher_head

ddc-sorter_rank:
	rm -rf repos/ddc-sorter_rank
	git clone https://github.com/Shougo/ddc-sorter_rank.git repos/ddc-sorter_rank

ddc-cmdline:
	rm -rf repos/ddc-cmdline
	git clone https://github.com/Shougo/ddc-cmdline.git repos/ddc-cmdline
