set tabstop=2                 " n columns per tab
set shiftwidth=2              " n columns to indent with << and >>
set expandtab                 " insert spaces for tabs
set listchars=tab:··,trail:⎵  " show tab and trailing whitespace


" run rspec with line number
function! RSpec()
  let cmd = '!clear && rspec %:p:' . line('.')
  exec cmd
endfunction

map <leader>r :call RSpec()<CR>
map <leader>R :exec '!clear &&  rake spec'<CR>
