au BufRead,BufNewFile *.wiki set filetype=vimwiki
au BufNewFile *.wiki Template wiki 
" TODO make the template simple. Now it is dependet on the plugin Template
" au BufNewFile *.* call s:insertheader()
" function s:insertheader() 
    " 0r ~/dotfiles/vim/templates/vimwiki_header.txt
    " G
" endfunction
" http://www.credativ.co.uk/credativ-blog/2010/06/howto-code-templates-in-vim
