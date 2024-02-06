let s:cpo_save=&cpo
set cpo&vim
cnoremap <silent> <Plug>(TelescopeFuzzyCommandSearch) e "lua require('telescope.builtin').command_history { default_text = [=[" . escape(getcmdline(), '"') . "]=] }"
noremap! <silent> <Plug>luasnip-expand-repeat <Cmd>lua require'luasnip'.expand_repeat()
noremap! <silent> <Plug>luasnip-delete-check <Cmd>lua require'luasnip'.unlink_current_if_deleted()
inoremap <silent> <Plug>luasnip-jump-prev <Cmd>lua require'luasnip'.jump(-1)
inoremap <silent> <Plug>luasnip-jump-next <Cmd>lua require'luasnip'.jump(1)
inoremap <silent> <Plug>luasnip-prev-choice <Cmd>lua require'luasnip'.change_choice(-1)
inoremap <silent> <Plug>luasnip-next-choice <Cmd>lua require'luasnip'.change_choice(1)
inoremap <silent> <Plug>luasnip-expand-snippet <Cmd>lua require'luasnip'.expand()
inoremap <silent> <Plug>luasnip-expand-or-jump <Cmd>lua require'luasnip'.expand_or_jump()
inoremap <silent> <C-K> <Cmd>lua vim.lsp.buf.signature_help()
inoremap <C-W> u
inoremap <C-U> u
nnoremap  ggVG
nnoremap 	 <Cmd>BufferLineCycleNext
nnoremap <silent> <NL> <Cmd>Lspsaga diagnostic_jump_next
nnoremap  <Cmd>nohlsearch|diffupdate|normal! 
nnoremap <silent> o <Cmd>ZenMode
nnoremap <Down> -
nnoremap <Up> +
nnoremap <Right> >
nnoremap <Left> <
nnoremap   w
xnoremap # y?\V"
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap & :&&
xnoremap * y/\V"
nnoremap + 
nnoremap - 
nnoremap <silent> K <Cmd>Lspsaga hover_doc
nnoremap Y y$
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
nnoremap <silent> \gR <Cmd>lua require('git.revert').open(true)
nnoremap <silent> \gr <Cmd>lua require('git.revert').open(false)
nnoremap <silent> \gD <Cmd>lua require('git.diff').close()
nnoremap <silent> \gd <Cmd>lua require('git.diff').open()
nnoremap <silent> \gn <Cmd>lua require('git.browse').create_pull_request()
nnoremap <silent> \gp <Cmd>lua require('git.browse').pull_request()
xnoremap <silent> \go : lua require('git.browse').open(true)
nnoremap <silent> \go <Cmd>lua require('git.browse').open(false)
nnoremap <silent> \gb <Cmd>lua require('git.blame').blame()
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
xmap a% <Plug>(MatchitVisualTextObject)
nnoremap dw vb"_d
xnoremap gb <Plug>(comment_toggle_blockwise_visual)
xnoremap gc <Plug>(comment_toggle_linewise_visual)
nnoremap gb <Plug>(comment_toggle_blockwise)
nnoremap gc <Plug>(comment_toggle_linewise)
nnoremap <silent> gr <Cmd>Lspsaga rename
nnoremap <silent> gp <Cmd>Lspsaga peek_definition
nnoremap <silent> gd <Cmd>Lspsaga lsp_finder
xmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
noremap sl l
noremap sj j
noremap sk k
noremap sh h
nnoremap sv :vsplitw
nnoremap ss :splitw
nnoremap te :tabedit
nnoremap x "_x
nnoremap <silent> <C-W>o <Cmd>ZenMode
nnoremap <S-Tab> <Cmd>BufferLineCyclePrev
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))
snoremap <silent> <Plug>luasnip-jump-prev <Cmd>lua require'luasnip'.jump(-1)
snoremap <silent> <Plug>luasnip-jump-next <Cmd>lua require'luasnip'.jump(1)
snoremap <silent> <Plug>luasnip-prev-choice <Cmd>lua require'luasnip'.change_choice(-1)
snoremap <silent> <Plug>luasnip-next-choice <Cmd>lua require'luasnip'.change_choice(1)
snoremap <silent> <Plug>luasnip-expand-snippet <Cmd>lua require'luasnip'.expand()
snoremap <silent> <Plug>luasnip-expand-or-jump <Cmd>lua require'luasnip'.expand_or_jump()
noremap <silent> <Plug>luasnip-expand-repeat <Cmd>lua require'luasnip'.expand_repeat()
noremap <silent> <Plug>luasnip-delete-check <Cmd>lua require'luasnip'.unlink_current_if_deleted()
xnoremap <Plug>(comment_toggle_blockwise_visual) <Cmd>lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())
xnoremap <Plug>(comment_toggle_linewise_visual) <Cmd>lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())
nnoremap <silent> <C-J> <Cmd>Lspsaga diagnostic_jump_next
xnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v'):if col("''") != col("$") | exe ":normal! m'" | endifgv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
nnoremap <C-W><Down> -
nnoremap <C-W><Up> +
nnoremap <C-W><Right> >
nnoremap <C-W><Left> <
nnoremap <C-A> ggVG
nnoremap <C-L> <Cmd>nohlsearch|diffupdate|normal! 
inoremap <silent>  <Cmd>lua vim.lsp.buf.signature_help()
inoremap  u
inoremap  u
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=start,eol,indent
set backupskip=/tmp/*,/private/tmp/*
set clipboard=unnamed,unnamedplus
set completeopt=menuone,noinsert,noselect
set expandtab
set formatoptions=1tqjc
set helplang=en
set ignorecase
set inccommand=split
set path=.,/usr/include,,**
set pumblend=5
set runtimepath=~/.config/nvim,~/.config/kdedefaults/nvim,/etc/xdg/nvim,~/.local/share/nvim/site,~/.local/share/nvim/site/pack/*/start/*,~/.local/share/nvim/site/pack/packer/start/packer.nvim,/usr/local/share/nvim/site,/usr/share/nvim/site,/usr/share/nvim/site/pack/*/start/*,/usr/share/nvim/site/pack/packer/start/packer.nvim,/usr/share/nvim/runtime,/usr/share/nvim/runtime/pack/dist/opt/matchit,/usr/lib/nvim,~/.local/share/nvim/site/pack/*/start/*/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,~/.local/share/nvim/site/after,/etc/xdg/nvim/after,~/.config/kdedefaults/nvim/after,~/.config/nvim/after,/usr/share/vim/vimfiles
set scrolloff=10
set shell=fish
set shiftwidth=2
set showtabline=0
set smartindent
set statusline=%#Normal#
set tabline=%!v:lua.nvim_bufferline()
set tabstop=2
set termguicolors
set title
set wildignore=*/node_modules/*
set wildoptions=pum
set window=17
" vim: set ft=vim :
