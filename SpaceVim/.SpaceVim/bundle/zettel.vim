func! Zettel(...)

		let l:sep = ''
		if len(a:000) > 0
				let l:sep = '-'
		endif
		let l:fname = expand('~/Documenti/Universita/SecondoSemestre/Note') . strftime("%F-%H:%M") . l:sep . join(a:000, '-') . '.md'

		" Edit the file
		exec "e " . l:fname

		" Title and timestamp
		if len(a:000) > 0
				exec "normal ggO\<c-r>=strftime('%Y-%m-%d %H:%M')\<cr> " . join(a:000) . "\<cr>\<esc>G"
		else
				exec "normal ggO\<c-r>=strftime('%Y-%m-%d %H:%M')\<cr>\<cr>\<esc>G"
		endif 

endfunc

