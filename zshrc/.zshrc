export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="refined"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Swap control and caps lock keys
setxkbmap -option ctrl:swapcaps
# Alt shift to switch from QWERTY to AZERTY
setxkbmap -model pc104 -layout us,fr -variant ,, -option grp:alt_shift_toggle

export EDITOR='vim'

autoload -U colors && colors

alias vim="~/.config/nvim/nvim.appimage"
alias ls="ls -l --color"

# Automatic "ls -la" after "cd" command
function cd() {
    emulate -LR zsh
    builtin cd $@ &&
    ls -la
}

RED=$fg[red]
ORANGE="\033[93m"
END=$fg[white]

echo "$RED                   ,~.                      $END "
echo "$RED                ,-'__ \`-,                   $END"
echo "$RED               {,-'  \`. }     $END         ,')  "
echo "              $ORANGE,$RED($END a $RED)$END   \`-.__         ,',')~,"
echo "             $ORANGE<=.$RED) ($END         \`-.__,==' ' ' '}"
echo "               $RED(   )$END                      /  "
echo "                $RED\`-'$END\    ,                  ) "
echo "                    |  \        \`~.      /  "
echo "                    \   \`._        \    /   "
echo "                     \     \`._____,'   /    "
echo "                      \`-.            ,'     "
echo "                         \`-.      ,-'       "
echo "                            \`~~~~'          "
echo "$ORANGE                            //_||           $END "
echo "$ORANGE                         __//--'/\`         $END "
echo "$ORANGE                       ,--'/\`  '           $END "
