func! CleanWordArray()
  normal gv"ax
  let string = tlib#string#Strip(getreg('a'))
  let array = eval(string)
  let string = '%w{' . join(array, ' ') . '}'
  call setreg('a', string)
  exec 'normal "ap'
endfunc

vmap \wa :call CleanWordArray()<cr>

nmap ,c :!cucumber --drb --tags @wip<cr>
nmap ,C :!cucumber --drb<cr>

" run rspec on the current line:
nmap ,s :!rspec %:<c-r>=line('.')<cr><cr>

