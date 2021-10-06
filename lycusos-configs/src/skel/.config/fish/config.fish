set -g fish_greeting
if status --is-interactive
	if test -z "$DISPLAY" -a $XDG_VTNR = 1
		read --prompt="echo 'Do you want to startx? [Y/n]: '" prompt
		if test -z "$prompt"
			set prompt y
		end
		if test $prompt = y -o $prompt = Y
			exec startx -- -keeptty
		end
	end
end
