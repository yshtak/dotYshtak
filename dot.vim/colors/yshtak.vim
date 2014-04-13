" Vim color file
" inkpotを差し替えたもの
" Name:       yshtak.vim
" Homepage:   http://github.com/yshtak/yshtak.vim

set background=dark
hi clear
if exists("syntax_on")
   syntax reset
endif

let colors_name = "yshtak"

" background
hi Normal         gui=NONE   guifg=#dddddd   guibg=#333333
hi CursorLine     gui=underline    guibg=#444444

hi IncSearch      gui=BOLD   guifg=#303030   guibg=#cd8b60
hi Search         gui=NONE   guifg=#303030   guibg=#ad7b57
hi ErrorMsg       gui=BOLD   guifg=#ffffff   guibg=#ce4e4e
hi WarningMsg     gui=BOLD   guifg=#ffffff   guibg=#ce8e4e
hi ModeMsg        gui=BOLD   guifg=#7e7eae   guibg=NONE
hi MoreMsg        gui=BOLD   guifg=#7e7eae   guibg=NONE
hi Question       gui=BOLD   guifg=#ffcd00   guibg=NONE

hi StatusLine     gui=BOLD   guifg=#b9b9b9   guibg=#3e3e5e
hi User1          gui=BOLD   guifg=#00ff8b   guibg=#3e3e5e
hi User2          gui=BOLD   guifg=#7070a0   guibg=#3e3e5e
hi StatusLineNC   gui=NONE   guifg=#b9b9b9   guibg=#3e3e5e
hi VertSplit      gui=NONE   guifg=#b9b9b9   guibg=#3e3e5e

hi WildMenu       gui=BOLD   guifg=#eeeeee   guibg=#6e6eaf

hi MBENormal                 guifg=#cfbfad   guibg=#2e2e3f
hi MBEChanged                guifg=#eeeeee   guibg=#2e2e3f
hi MBEVisibleNormal          guifg=#cfcfcd   guibg=#4e4e8f
hi MBEVisibleChanged         guifg=#eeeeee   guibg=#4e4e8f

hi DiffText       gui=NONE   guifg=#ffffcd   guibg=#4a2a4a
hi DiffChange     gui=NONE   guifg=#ffffcd   guibg=#306b8f
hi DiffDelete     gui=NONE   guifg=#ffffcd   guibg=#6d3030
hi DiffAdd        gui=NONE   guifg=#ffffcd   guibg=#306d30

hi Cursor         gui=NONE   guifg=#303020   guibg=#3b3b6f 
hi lCursor        gui=NONE   guifg=#404040   guibg=#8fff8b
hi CursorIM       gui=NONE   guifg=#404040   guibg=#8b8bff

hi Folded         gui=NONE   guifg=#cfcfcd   guibg=#4b208f
hi FoldColumn     gui=NONE   guifg=#8b8bcd   guibg=#2e2e2e

hi Directory      gui=NONE   guifg=#00ff8b   guibg=NONE
hi LineNr         gui=NONE   guifg=#8b8bcd   guibg=#2e2e2e
hi NonText        gui=BOLD   guifg=#8b8bcd   guibg=NONE
hi SpecialKey     gui=BOLD   guifg=#ab508d   guibg=NONE
hi Title          gui=BOLD   guifg=#af4f4b   guibg=NONE
hi Visual         gui=NONE   guifg=#eeeeee   guibg=#4e4e8f

hi Comment        gui=NONE   guifg=#6d8bb0   guibg=NONE
"hi Constant       gui=NONE   guifg=#ffcd8b   guibg=NONE
hi Constant       gui=NONE   guifg=#ff6d6b   guibg=NONE
hi String         gui=NONE   guifg=#cfad7b   guibg=#404040
hi Error          gui=NONE   guifg=#ffffff   guibg=#6e2e2e
hi Function     gui=NONE   guifg=#ff8bff   guibg=NONE
hi Identifier     gui=NONE   guifg=#6fbbff   guibg=NONE
"hi Identifier     gui=NONE   guifg=#ff8bff   guibg=NONE
hi Ignore         gui=NONE
hi Number         gui=NONE   guifg=#20adfd   guibg=NONE
hi PreProc        gui=BOLD   guifg=#60c0c0   guibg=NONE
hi Special        gui=NONE   guifg=#c080d0   guibg=NONE
hi SpecialChar    gui=NONE   guifg=#c080d0   guibg=#404040
hi Statement      gui=BOLD   guifg=#808bed   guibg=NONE
hi Todo           gui=BOLD   guifg=#303030   guibg=#d0a060
hi Type           gui=NONE   guifg=#efcb4f   guibg=NONE
"hi Type           gui=NONE   guifg=#ff8bff   guibg=NONE
hi Underlined     gui=BOLD   guifg=#df9f2d   guibg=NONE
hi TaglistTagName gui=BOLD   guifg=#808bed   guibg=NONE

hi perlSpecialMatch   gui=NONE guifg=#c080d0   guibg=#404040
hi perlSpecialString  gui=NONE guifg=#c080d0   guibg=#404040

hi cSpecialCharacter  gui=NONE guifg=#c080d0   guibg=#404040
hi cFormat            gui=NONE guifg=#c080d0   guibg=#404040

hi doxygenBrief                 gui=NONE guifg=#fdab60   guibg=NONE
hi doxygenParam                 gui=NONE guifg=#fdd090   guibg=NONE
hi doxygenPrev                  gui=NONE guifg=#fdd090   guibg=NONE
hi doxygenSmallSpecial          gui=NONE guifg=#fdd090   guibg=NONE
hi doxygenSpecial               gui=NONE guifg=#fdd090   guibg=NONE
hi doxygenComment               gui=NONE guifg=#ad7b20   guibg=NONE
hi doxygenSpecial               gui=NONE guifg=#fdab60   guibg=NONE
hi doxygenSpecialMultilineDesc  gui=NONE guifg=#ad600b   guibg=NONE
hi doxygenSpecialOnelineDesc    gui=NONE guifg=#ad600b   guibg=NONE

if v:version >= 700
  hi Pmenu          gui=NONE   guifg=#eeeeee   guibg=#4e4e8f
  hi PmenuSel       gui=BOLD   guifg=#eeeeee   guibg=#2e2e3f
  hi PmenuSbar      gui=BOLD   guifg=#eeeeee   guibg=#6e6eaf
  hi PmenuThumb     gui=BOLD   guifg=#eeeeee   guibg=#6e6eaf

  hi SpellBad     gui=undercurl guisp=#cc6666
  hi SpellRare    gui=undercurl guisp=#cc66cc
  hi SpellLocal   gui=undercurl guisp=#cccc66
  hi SpellCap     gui=undercurl guisp=#66cccc

  hi MatchParen   gui=NONE      guifg=#cfbfad   guibg=#4e4e8f
endif
if v:version >= 703
  hi Conceal      gui=NONE      guifg=#c080d0   guibg=NONE
  "hi ColorColumn  gui=NONE                      guibg=#2e2e2e
  hi CursorColumn gui=NONE     guibg=#444444
endif

" vim: set et :
