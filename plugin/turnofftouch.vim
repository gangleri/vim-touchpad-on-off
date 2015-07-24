" Turn the touchpad on/off

function! ToggleTouchPad()
	let state = 1 - system('synclient -l | grep --color=never -oP "TouchpadOff.+\K(\d)"')
	echo system("synclient TouchadOff=".state)
endfunction

command! ToggleTouch
      \ call ToggleTouchPad()

noremap <leader>ttp :ToggleTouch<cr>

