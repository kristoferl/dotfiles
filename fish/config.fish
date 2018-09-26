### REMOVE FISH START MESSAGE ###
set fish_greeting

### CHANGE LS COLORS ###
#set -g -x LSCOLORS gxfxbEaEBxxEhEhBaDaCaD
# https://www.cyberciti.biz/tips/freebsd-how-to-enable-colorized-ls-output.html

#set default_path /usr/bin /usr/sbin /bin /sbin /usr/local/bin ~/bin
#set homebrew /usr/local/bin /usr/local/sbin
set homebrew /usr/local/bin
set -g -x PATH ~/bin $homebrew $python_path $PATH

# Add MTG tools to path
set -g -x PATH $PATH /Users/kristofer/Projects/viaplay/tools/bin

# Add Rust/Cargo binaries
set -g -x PATH $PATH /Users/kristofer/.cargo/bin

# Scala installed via homebrew
# To use with IntelliJ, set the Scala home to:
set -g -x SCALA_HOME /usr/local/opt/scala/idea

# Groovy installed via Homebrew
set -g -x GROOVY_HOME /usr/local/opt/groovy/libexec


set -g -x LC_MESSAGES en_US

### GIT PROMPT ###
#set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_showdirtystate "true"
set -g __fish_git_prompt_showstashstate "true"
set -g __fish_git_prompt_showuntrackedfiles "true"
set -g __fish_git_prompt_showcolorhints "true"
set -g __fish_git_prompt_showupstream "auto"
set -g __fish_git_prompt_color_branch yellow

# configure fish git prompt
set -g __fish_git_prompt_char_dirtystate 'λ '
set -g __fish_git_prompt_char_stagedstate '→ '
set -g __fish_git_prompt_char_stashstate '⚑ '
set -g __fish_git_prompt_char_upstream_ahead '↑ '
set -g __fish_git_prompt_char_upstream_behind '↓ '
set -g __fish_git_prompt_char_untrackedfiles '+ '
set -g __fish_git_prompt_char_conflictedstate '✖ '
set -g __fish_git_prompt_char_cleanstate '✔ '

# GIT ALIASES
alias gcm="git commit -m"
alias glog="git log --oneline --abbrev-commit --all --graph --decorate --color"

### ALIAS ###
alias ls="ls -GFh"
alias ll="ls -GFhla"
alias grep="grep --color=auto"

## MAKE VIM THE DEFAULT EDITOR ###
set -g EDITOR "vim"

## Swedish Radio Channel
alias p1="mpg123 -@ http://sverigesradio.se/topsy/direkt/132-hi-mp3.m3u"
alias p2="mpg123 -@ http://sverigesradio.se/topsy/direkt/163-hi-mp3.m3u"
alias p2m="mpg123 -@ http://sverigesradio.se/topsy/direkt/1603-hi-mp3.m3u"
alias p3="mpg123 -@ http://sverigesradio.se/topsy/direkt/164-hi-mp3.m3u"
alias p4="mpg123 -@ http://sverigesradio.se/topsy/direkt/701-hi-mp3.m3u"
alias p4s="mpg123 -@ http://sverigesradio.se/topsy/direkt/701-hi-mp3.m3u"
alias sisu="mpg123 -@ http://sverigesradio.se/topsy/direkt/226-hi-mp3.m3u"

# PRETTY PRINT JSON
alias pj="python -m json.tool"

# http://benw.me/posts/colourized-pretty-printed-json-with-curl/
function jcurl
  curl -H "Accept: application/json" "$argv" | python -m json.tool
end

# Pretty print XML
function pxml
    xmllint --format - $argv
end

# Java
# List available Java versions: /usr/libexec/java_home -V
alias java8 "set -gx JAVA_HOME (/usr/libexec/java_home -v1.8)"
alias java9 "set -gx JAVA_HOME (/usr/libexec/java_home -v9)"
alias java10 "set -gx JAVA_HOME (/usr/libexec/java_home -v10)"
alias java11 "set -gx JAVA_HOME (/usr/libexec/java_home -v11)"
# Set Java version
java8

# DOCKER
# http://jimhoskins.com/2013/07/27/remove-untagged-docker-images.html
function docker-remove-containers --description 'Remove all stopped containers'
  docker rm (docker ps -a -q)
end

function docker-remove-all-images --description 'Remove all images'
  docker rmi (docker images | awk '{print $3}')
end

function docker-remove-images --description 'Remove all untagged images'
  docker rmi (docker images | grep "^<none>" |  awk '{print $3}')
end

# http://www.projectatomic.io/blog/2015/07/what-are-docker-none-none-images/
function docker-remove-dangling-images --description 'Remove all dangling images'
  docker rmi (docker images -f "dangling=true" -q)
end

function alert --description 'Display a notification with the supplied message'
  osascript -e 'display notification with title "'$argv'" sound name "Pop"'
end

# The initial 'play' command is used to start Spotify if it isn't open
alias spiano="SpotifyControl play; sleep 1; SpotifyControl play spotify:user:spotify:playlist:37i9dQZF1DX4sWSpwq3LiO"
