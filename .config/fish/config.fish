if status is-interactive
    # Commands to run in interactive sessions can go here
	starship init fish | source
	cat ~/.cache/wal/sequences &
	alias vi "nvim"
	alias vim "nvim"

	function bind_bang
		switch (commandline -t)[-1]
			case "!"
				commandline -t $history[1]; commandline -f repaint
			case "*"
				commandline -i !
		end
	end

	function bind_dollar
		switch (commandline -t)[-1]
			case "!"
				commandline -t ""
				commandline -f history-token-search-backward
			case "*"
				commandline -i '$'
		end
	end

	function fish_user_key_bindings
		bind ! bind_bang
		bind '$' bind_dollar
	end

end
