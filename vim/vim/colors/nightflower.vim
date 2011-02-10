"these lines are suggested to be at the top of every colorscheme
hi clear
if exists("syntax_on")
  syntax reset
endif

"Load the 'base' colorscheme - the one you want to alter
runtime $VIMRUNTIME/colors/default.vim

"Override the name of the base colorscheme with the name of this custom one
let g:colors_name = "nightflower"

"Clear the colors for any items that you don't like
hi clear Constant
hi clear ErrorMsg
hi clear FoldColumn
hi clear Folded
hi clear IncSearch
hi clear LineNr
hi clear MatchParen
hi clear Search
hi clear Statement
hi clear Type

"Set up your new & improved colors
hi Constant      term=underline                    ctermfg=2                                 guifg=Magenta
hi ErrorMsg      term=standout                     ctermfg=2    ctermbg=0                    guifg=White       guibg=Red
hi FoldColumn    term=standout                     ctermfg=4    ctermbg=15                   guifg=DarkBlue    guibg=Grey
hi Folded        term=standout                     ctermfg=4    ctermbg=15                   guifg=DarkBlue    guibg=LightGrey
hi IncSearch     term=reverse     cterm=reverse    ctermfg=3                  gui=reverse
hi LineNr        term=underline                    ctermfg=1                                 guifg=Brown
hi MatchParen    term=reverse                      ctermfg=0    ctermbg=6                                      guibg=Cyan
hi Search        term=reverse                      ctermfg=0    ctermbg=2                                      guibg=Yellow
hi Statement     term=bold                         ctermfg=1                  gui=bold       guifg=Brown
hi Type          term=underline                    ctermfg=3                  gui=bold       guifg=SeaGreen
