### REMOVE FISH START MESSAGE ###
set fish_greeting

### CHANGE LS COLORS ###
set -g -x LSCOLORS gxfxbEaEBxxEhEhBaDaCaD

### PATH ###
#set default_path /usr/bin /usr/sbin /bin /sbin /usr/local/bin ~/bin
#set homebrew /usr/local/bin /usr/local/sbin
set homebrew /usr/local/bin
set -g -x PATH $homebrew ~/bin $PATH

### GIT PROMPT ###
set -g __fish_git_prompt_showdirtystate "true"
set -g __fish_git_prompt_showstashstate "true"
set -g __fish_git_prompt_showuntrackedfiles "true"
set -g __fish_git_prompt_showcolorhints "true"
set -g __fish_git_prompt_showupstream "auto"
set -g  __fish_git_prompt_color_branch yellow

# configure fish git prompt
set -g  __fish_git_prompt_char_dirtystate '✨ '
set -g  __fish_git_prompt_char_stagedstate '→'
set -g  __fish_git_prompt_char_stashstate '📦 '
set -g  __fish_git_prompt_char_upstream_ahead '↑'
set -g  __fish_git_prompt_char_upstream_behind '↓'
set -g __fish_git_prompt_char_untrackedfiles '🆕 '
set -g __fish_git_prompt_char_conflictedstate '✖'
set -g __fish_git_prompt_char_cleanstate '✔'

# GIT ALIASES
alias gcm="git commit -m"
alias glog="git log --oneline --abbrev-commit --all --graph --decorate --color"

### ALIAS ###
alias ls="ls -Gfh"
alias ll="ls -Gflath"
alias grep="grep --color=auto"

## MAKE VIM THE DEFAULT EDITOR ###
set -g EDITOR "vim"

## Swedish Radio Channel
alias p1="mpg123 -@ http://sverigesradio.se/topsy/direkt/132-hi-mp3.m3u"
alias p2="mpg123 -@ http://sverigesradio.se/topsy/direkt/163-hi-mp3.m3u"
alias p2m="mpg123 -@ http://sverigesradio.se/topsy/direkt/1603-hi-mp3.m3u"
alias p3="mpg123 -@ http://sverigesradio.se/topsy/direkt/164-hi-mp3.m3u"
alias p4="mpg123 -@ http://sverigesradio.se/topsy/direkt/701-hi-mp3.m3u"
alias p4s="mpg123 -@ http://sverigesradio.se/topsy/direkt/179-hi-mp3.m3u"
alias sisu="mpg123 -@ http://sverigesradio.se/topsy/direkt/226-hi-mp3.m3u"

# PRETTY PRINT JSON
alias pj="python -m json.tool"

# http://benw.me/posts/colourized-pretty-printed-json-with-curl/
function jcurl
   curl -H "Accept: application/json" "$argv" | python -m json.tool
end
