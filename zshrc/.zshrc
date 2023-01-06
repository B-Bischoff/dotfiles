export ZSH="$HOME/.oh-my-zsh"

#ZSH_THEME="robbyrussell"
ZSH_THEME="refined"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

autoload -U colors && colors

alias vim="~/.config/nvim/nvim.appimage"
alias ls="ls -l --color"

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
