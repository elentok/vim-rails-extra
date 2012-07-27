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

command! -range RJsonToStrings exec "'<,'>" . 's/\([a-zA-Z0-9_]\+\):/"\1" =>/g'
command! -range RJsonToArrows exec "'<,'>" . 's/\([a-zA-Z0-9_]\+\):/:\1 =>/g'
command! -range RStringsToJson exec "'<,'>" . 's/"\([a-zA-Z0-9_]\+\)" =>/\1:/g'
command! -range RStringsToArrows exec "'<,'>" . 's/"\([a-zA-Z0-9_]\+\)" =>/:\1 =>/g'
command! -range RArrowsToJson exec "'<,'>" . 's/:\([a-zA-Z0-9_]\+\) =>/\1:/g'
command! -range RArrowsToStrings exec "'<,'>" . 's/:\([a-zA-Z0-9_]\+\) =>/"\1" =>/g'

vmap \cjs :RJsonToStrings<cr>
vmap \cja :RJsonToArrows<cr>
vmap \csj :RStringsToJson<cr>
vmap \csa :RStringsToArrows<cr>
vmap \caj :RArrowsToJson<cr>
vmap \cas :RArrowsToStrings<cr>
