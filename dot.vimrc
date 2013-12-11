imap <C-e> <End>
imap <C-h> <Home>
set backspace=indent,eol,start
"nmap j <up>
"nmap k <down>
set pastetoggle=<C-E>
set cursorline
set number
set showmatch
set smarttab
set tabstop=1
set smartindent
" タブを挿入するときの幅
set shiftwidth=2
set expandtab " replace to use a tab as space
set laststatus=2 " StatuLineの表示
"set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set t_Co=256
set encoding=utf-8
set hlsearch
set incsearch

autocmd FileType python let g:pydiction_location = '~/.vim/pydiction/complete-dict'
autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl expandtab tabstop=4 shiftwidth=2 softtabstop=2

"au BufNewFile,BufRead *.rb set nowrap tabstop=1 shiftwidth=1 softtabstop=1

"filetype off
filetype plugin indent on
set foldenable

"""""""""""""""""""""""""""""""""""
"" Neobundle
"""""""""""""""""""""""""""""""""""
set nocompatible

if has('vim_starting')
 set runtimepath+=~/.vim/bundle/neobundle.vim
 call neobundle#rc(expand('~/.vim/bundle/'))
endif
" originalrepos on git hub
" Status Line plugin
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'tpope/vim-fugitive'
" Regex
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'osyo-manga/vim-over'
" javascript jade
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'briancollins/vim-jst'
NeoBundle 'pangloss/vim-javascript'
"
NeoBundle 'YankRing.vim'
" for elixir
NeoBundle 'elixir-lang/vim-elixir'
" for Haskel
NeoBundle 'ujihisa/neco-ghc'
NeoBundle 'eagletmt/unite-haddock'
NeoBundle 'eagletmt/ghcmod-vim'
NeoBundle 'pbrisbin/html-template-syntax'
"" for Rails
NeoBundle 'tpope/vim-rails'
""
NeoBundle 'lambdalisue/platex.vim'
NeoBundle 'taichouchou2/alpaca_powertabline'
""NeoBundle 'Lokaltog/powerline', { 'rtp' : 'powerline/bindings/vim'}
NeoBundle 'dag/vim2hs'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
NeoBundle 'vim-ruby/vim-ruby'
" 補完 {{{
NeoBundle 'Shougo/neocomplcache'
"NeoBundleLazy 'Shougo/neocomplcache', {
"      \ 'autoload' : {
"      \   'insert' : 1,
"      \ }}
NeoBundle 'Shougo/neosnippet'
"NeoBundleLazy 'Shougo/neosnippet', {
"      \ 'autoload' : {
"      \   'insert' : 1,
"      \ }}
" }}}

function! s:bundleLoadDepends(bundle_names) "{{{
  " bundleの読み込み
  execute 'NeoBundleSource '.a:bundle_names
  au! RailsLazyPlugins
endfunction
"}}}

"------------------------------------
" neocomplcache
"------------------------------------
" 補完・履歴 neocomplcache "{{{
set infercase

" ------------------------
" neocomplcacheの色設定
" ------------------------
highlight Pmenu ctermbg=245
highlight Pmenu ctermfg=255
highlight PmenuSel ctermbg=204
highlight PmenuSel ctermfg=234
highlight PMenuSbar ctermbg=245
highlight PMenuSbar ctermfg=255

"----------------------------------------
" neocomplcache
let g:neocomplcache_enable_at_startup = 1
imap <C-k> <Plug>(neocomplcache_snippets_expand)
smap <C-k> <Plug>(neocomplcache_snippets_expand)
" default config"{{{
let g:neocomplcache_force_overwrite_completefunc = 1
"let g:neocomplcache#sources#rsense#home_directory = expand('~/.bundle/rsense-0.3')
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_skip_auto_completion_time = '0.3'
"}}}
 
" keymap {{{
"let g:neocomplcache_snippets_dir = $HOME.'/.vim/snippets'

" :NeoComplCacheEditSnippets [filetype]
" ユーザ定義用のスニペットファイルの編集ができる。
" ftを指定しなければ現在のftのスニペットファイルを開く。
" ちなみに、プラグインに組み込まれてるスニペットファイルは下記にある。
" ~/.vim/autoload/neocomplcache/sources/snippets_complete/
nnoremap <silent> <Space>nes  :<C-u>NeoSnippetEdit<CR>
" for snippets
 
"------------------------------------
" neosnippet
"------------------------------------
" neosnippet "{{{
 
" snippetを保存するディレクトリを設定してください
" example
" let s:default_snippet = neobundle#get_neobundle_dir() . '/neosnippet/autoload/neosnippet/snippets' " 本体に入っているsnippet
let s:my_snippet = '~/.vim/snippets' " 自分のsnippet
let g:neosnippet#snippets_directory = s:my_snippet 
" let g:neosnippet#snippets_directory = s:default_snippet . ',' . s:my_snippet
imap <silent><C-F>                <Plug>(neosnippet_expand_or_jump)
inoremap <silent><C-U>            <ESC>:<C-U>Unite snippet<CR>
nnoremap <silent><Space>e         :<C-U>NeoSnippetEdit -split<CR>
smap <silent><C-F>                <Plug>(neosnippet_expand_or_jump)
" xmap <silent>o                    <Plug>(neosnippet_register_oneshot_snippet)
"}}}

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif
"====================================
"
"===================================
nnoremap <silent>UB :<C-u>Unite buffer<CR>

"------------------------------------
" Unite-reek, Unite-rails_best_practices
"------------------------------------
" {{{
nnoremap <silent> [unite]<C-R>      :<C-u>Unite -no-quit reek<CR>
nnoremap <silent> [unite]<C-R><C-R> :<C-u>Unite -no-quit rails_best_practices<CR>
" }}}
"}}}

"----------------------------------------
" vim-ref
"----------------------------------------
"{{{
let g:ref_open                    = 'split'
let g:ref_refe_cmd                = expand('~/.vim/ref/ruby-ref1.9.2/refe-1_9_2')
 
nnoremap rr :<C-U>Unite ref/refe     -default-action=split -input=
nnoremap ri :<C-U>Unite ref/ri       -default-action=split -input=
 
aug MyAutoCmd
  au FileType ruby,eruby,ruby.rspec nnoremap <silent><buffer>KK :<C-U>Unite -no-start-insert ref/ri   -input=<C-R><C-W><CR>
  au FileType ruby,eruby,ruby.rspec nnoremap <silent><buffer>K  :<C-U>Unite -no-start-insert ref/refe -input=<C-R><C-W><CR>
aug END
"}}}
"------------------------------------
" Unite-rails.vim
"------------------------------------
"{{{
"function! UniteRailsSetting()
"  nnoremap <buffer><C-H><C-H><C-H>  :<C-U>Unite rails/view<CR>
"  nnoremap <buffer><C-H><C-H>       :<C-U>Unite rails/model<CR>
"  nnoremap <buffer><C-H>            :<C-U>Unite rails/controller<CR>
" 
"  nnoremap <buffer><C-H>c           :<C-U>Unite rails/config<CR>
"  nnoremap <buffer><C-H>s           :<C-U>Unite rails/spec<CR>
"  nnoremap <buffer><C-H>m           :<C-U>Unite rails/db -input=migrate<CR>
"  nnoremap <buffer><C-H>l           :<C-U>Unite rails/lib<CR>
"  nnoremap <buffer><expr><C-H>g     ':e '.b:rails_root.'/Gemfile<CR>'
"  nnoremap <buffer><expr><C-H>r     ':e '.b:rails_root.'/config/routes.rb<CR>'
"  nnoremap <buffer><expr><C-H>se    ':e '.b:rails_root.'/db/seeds.rb<CR>'
"  nnoremap <buffer><C-H>ra          :<C-U>Unite rails/rake<CR>
"  nnoremap <buffer><C-H>h           :<C-U>Unite rails/heroku<CR>
"endfunction
"aug MyAutoCmd
"  au User Rails call UniteRailsSetting()
"aug END
"}}}

"------------------------------------
" vim-rails
"------------------------------------
""{{{
"有効化
"let g:rails_default_file='config/database.yml'
"let g:rails_level = 4
"let g:rails_mappings=1
"let g:rails_modelines=0
" let g:rails_some_option = 1
"let g:rails_statusline = 1
" let g:rails_subversion=0
" let g:rails_syntax = 1
" let g:rails_url='http://localhost:3000'
" let g:rails_ctags_arguments='--languages=-javascript'
" let g:rails_ctags_arguments = ''
"function! SetUpRailsSetting()
"  nnoremap <buffer><Space>r :R<CR>
"  nnoremap <buffer><Space>a :A<CR>
"  nnoremap <buffer><Space>m :Rmodel<Space>
"  nnoremap <buffer><Space>c :Rcontroller<Space>
"  nnoremap <buffer><Space>v :Rview<Space>
"  nnoremap <buffer><Space>p :Rpreview<CR>
"endfunction
" 
"aug MyAutoCmd
"  au User Rails call SetUpRailsSetting()
"aug END
" 
"aug RailsDictSetting
"  au!
"aug END
"}}}
"------------------------------------
" vimerl
"---------------------------------
"let g:erlangHightlightBif=1

"----------
" VimFiler
"----------
" Buffer list
nnoremap <silent> [unite]b :<C-u>Unite buffer<CR>
" IDE風にbufferを開く
nnoremap <silent> <Leader>fi :<C-u>VimFilerBufferDir -split -simple -winwidth=35 -no-quit<CR>
""
" vim-powerline
""
"python from powerline.bindings.vim import source_plugin; source_plugin()
"source ~/.vim/bundle/powerline/powerline/bindings/vim/plugin/source_plugin.vim
"

""
" lightline setting
""
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'filename' ] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'MyFugitive',
      \   'readonly': 'MyReadonly',
      \   'modified': 'MyModified',
      \   'filename': 'MyFilename'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

function! MyModified()
  if &filetype == "help"
    return ""
  elseif &modified
    return "+"
  elseif &modifiable
    return ""
  else
    return ""
  endif
endfunction

function! MyReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return "❖"
  else
    return ""
  endif
endfunction

function! MyFugitive()
  if exists("*fugitive#head")
    let _ = fugitive#head()
    return strlen(_) ? '➲ '._ : ''
  endif
  return ''
endfunction

function! MyFilename()
  return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
       \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
       \ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction

" 
" Start up setting
command Vf :VimFiler -split -simple -winwidth=35 -no-quit 



let g:vimfiler_safe_mode_by_default = 0
syntax on
