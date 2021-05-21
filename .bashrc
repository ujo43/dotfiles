#
# ~/.bashrc
#
# Dependencies:
#	lsd
#	starship
#	neovim
#	neofetch


# Colors
green=$(tput setaf 46)
blue=$(tput setaf 4)
brightblue=$(tput setaf 39)
yellow=$(tput setaf 3)
red=$(tput setaf 1)
white=$(tput setaf 253)
bold=$(tput bold)
end=$(tput sgr0)
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
alias vim=nvim
alias ls=lsd
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' 

#start neofetch
#
neofetch

# Initialize starship command prompt
#
eval "$(starship init bash)"

# Normal prompt commented out because of starship prompt
#
# PS1='\n${bold}${brightblue}(';
# PS1+='${yellow}\u${white}@${red}\h ';
# PS1+='${bold}${white}\$${brightblue})-(${end}';
# PS1+='${blue}\w'
# PS1+='${bold}${brightblue})\n';
# PS1+='${bold}${green}(';
# PS1+='${white}\W';
# PS1+='${bold}${green})->$end '


export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/bin/statusbar:$PATH
export EDITOR="nvim"

