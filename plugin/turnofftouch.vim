
let s:TouchPadEnabled=1
function! ToggleTouchPad()
  if(s:TouchPadEnabled == 1)
    let s:TouchPadEnabled=0
  else
    let s:TouchPadEnabled=1
  endif
  let id=substitute(system("xinput list | ack '.+Trackpad.+id=(\\d+)' --output '$1'"), "\n", "", "")
  execute ":silent !xinput set-prop ".id." 'Device Enabled' ".s:TouchPadEnabled
  execute ":redraw!"
endfunction


command! ToggleTouch
      \ call ToggleTouchPad()

noremap <leader>ttp :ToggleTouch<cr>

