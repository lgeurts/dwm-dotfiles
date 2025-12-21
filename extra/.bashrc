#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o vi

# Set prompt colors
blk='\[\033[01;30m\]'
red='\[\033[01;31m\]'
grn='\[\033[01;32m\]' 
ylw='\[\033[01;33m\]'
blu='\[\033[01;34m\]'
pur='\[\033[01;35m\]'
cyn='\[\033[01;36m\]'
wht='\[\033[01;37m\]'
clr='\[\033[00m\]'

# Set history size
HISTTIMEFORMAT="%F %T"
HISTCONTROL=ignoredups
HISTSIZE=2000
HISTFILESIZE=2000
shopt -s histappend

if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

eval "$(starship init bash)"
eval "$(fzf --bash)"

PS1='[\u@\h \W]\$'

# Set functions
function hg() {
    history | grep "$1";
}

function find_largest_files() {
    du -h -x -s -- * | sort -r -h | head -20;
}

function git_branch() {
    if [ -d .git ] ; then
        printf "%s" "($(git branch 2> /dev/null | awk '/\*/{print $2}'))";
    fi
}

# Set the prompt.
function bash_prompt(){
    PS1='${debian_chroot:+($debian_chroot)}'${blu}'$(git_branch)'${pur}' \W'${grn}' \$ '${clr}
}

bash_prompt

function git_init() {
    if [ -z "$1" ]; then
        printf "%s\n" "Please provide a directory name.";
    else
        mkdir "$1";
        builtin cd "$1";
        pwd;
        git init;
        touch readme.md .gitignore LICENSE;
        echo "# $(basename $PWD)" >> readme.md
    fi
}

function weather_report() {

   local response=$(curl --silent 'https://api.openweathermap.org/data/2.5/weather?id=5128581&units=imperial&appid=<YOUR_API_KEY>') 

   local status=$(echo $response | jq -r '.cod')

   case $status in

        200) printf "Location: %s %s\n" "$(echo $response | jq '.name') $(echo $response | jq '.sys.country')"  
             printf "Forecast: %s\n" "$(echo $response | jq '.weather[].description')" 
             printf "Temperature: %.1f°F\n" "$(echo $response | jq '.main.temp')" 
             printf "Temp Min: %.1f°F\n" "$(echo $response | jq '.main.temp_min')" 
             printf "Temp Max: %.1f°F\n" "$(echo $response | jq '.main.temp_max')" 
            ;;
        401) echo "401 error"
            ;;
        *) echo "error"
            ;;

   esac

}

clear

#printf "\n"
#printf "   %s\n" "IP ADDR: $(curl ifconfig.me)"
#printf "   %s\n" "USER: $(echo $USER)"
#printf "   %s\n" "DATE: $(date)"
#printf "   %s\n" "UPTIME: $(uptime -p)"
#printf "   %s\n" "HOSTNAME: $(hostname -f)"
#printf "   %s\n" "CPU: $(awk -F: '/model name/{print $2}' | head -1)"
#printf "   %s\n" "KERNEL: $(uname -rms)"
#printf "   %s\n" "PACKAGES: $(dpkg --get-selections | wc -l)"
#printf "   %s\n" "RESOLUTION: $(xrandr | awk '/\*/{printf $1" "}')"
#printf "   %s\n" "MEMORY: $(free -m -h | awk '/Mem/{print $3"/"$2}')"
#printf "\n"
