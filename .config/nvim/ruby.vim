function! TestContext()
  wall
  let [_, lnum, cnum, _] = getpos('.')
  RubyBlockSpecParentContext
  TestNearest
  call cursor(lnum, cnum)
endfunction

command! TestContext :call TestContext()

map <silent> <LocalLeader>rs :!ruby -c %<CR>
