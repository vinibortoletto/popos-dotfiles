# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
git
zsh-syntax-highlighting
fzf
zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

function lazygit() {
    git add .
    git commit -a -m "$1"
    git push
}

function update() {
    bash ~/Code/pop_os_config/helpers/update_system.sh
}

function phps() {
    nohup flatpak run --file-forwarding com.jetbrains.PhpStorm "$@" &
    disown
}

function idea() {
    nohup flatpak run --file-forwarding com.jetbrains.IntelliJ-IDEA-Community "$@" &
    disown
}

function dc() {
    if [[ $1 == "up" ]]; then
        docker-compose up -d
    elif [[ $1 == "down" ]]; then
        docker-compose down
    elif [[ $1 == "clean" ]]; then
        docker system prune -a
    elif [[ $1 == "down-all" ]]; then
        docker stop $(docker ps -a -q)
   elif [[ $1 == "reload" ]]; then
        docker-compose down && docker-compose up -d
    else
        echo "Invalid command. Usage: dc up"
    fi
}

function checkport() {
    sudo netstat -tunpl | grep $1
}

function locate() {
    local filename=""
    local directory=""

    while getopts ":f:d:" opt; do
        case ${opt} in
            f)
                filename="$OPTARG"
                ;;
            d)
                directory="$OPTARG"
                ;;
            \?)
                echo "Invalid option: -$OPTARG" >&2
                return 1
                ;;
            :)
                echo "Option -$OPTARG requires an argument." >&2
                return 1
                ;;
        esac
    done

    if [[ -n "$filename" ]]; then
        find ~ -type f -name "*$filename*" | fzf | xargs -r xdg-open
    elif [[ -n "$directory" ]]; then
        cd $(find ~ -type d -name "*$directory*" | fzf)
    else
        echo "Please specify either -f for filename or -d for directory."
        return 1
    fi
}



# Set Java home
export JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH

# Nala aliases
alias ns='nala search'
alias nu='sudo nala update && sudo nala upgrade -y'
alias nr='sudo nala purge -y'
alias ni='sudo nala install -y'

# Flatpak aliases
alias fpi='flatpak install -y'
alias fps='flatpak search'
alias fpr='flatpak uninstall -y'
alias fpl='flatpak list'

# System aliases
alias n='nano'
alias c='cp'
alias cf='cp -r'
alias rmf='rm -rf'
alias ff='find ~ -type f | fzf | xargs -r xdg-open'
alias fd='cd $(find ~ -type d | fzf)'
alias open='xdg-open'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Created by `pipx` on 2024-06-16 05:48:18
export PATH="$PATH:/home/vini/.local/bin"
export PATH="$HOME/.local/bin:$PATH"
