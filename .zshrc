export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(
git
zsh-syntax-highlighting
fzf
zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

function lazygit() {
    git add .
    git commit -a -m "$1"
    git push
}

function update() {
    bash ~/Code/pop_os_config/update_system.sh
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
        find ~ -type f -name "*$filename*"
    elif [[ -n "$directory" ]]; then
        find ~ -type d -name "*$directory*"
    else
        echo "Please specify either -f for filename or -d for directory."
        return 1
    fi
}



# Set Java home
export JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH

# Alias
alias ns='nala search'
alias nu='sudo nala update && sudo nala upgrade -y'
alias nr='sudo nala purge -y'
alias ni='sudo nala install -y'
alias n='nano'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
