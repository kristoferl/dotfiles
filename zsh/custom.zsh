#zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)

export homebrew=/usr/local/bin
export PATH=$HOME/bin:$homebrew:$PATH

export LC_MESSAGES='en_US'

export EDITOR='vim'

### ALIAS ###
alias ls="ls -GFh"
alias ll="ls -GFhla"
alias grep="grep --color=auto"
# https://unix.stackexchange.com/a/25329
alias watch="watch "

# GIT ALIASES
alias gcm="git commit -m"
alias glog="git log --oneline --abbrev-commit --all --graph --decorate --color"
alias gcms="git commit -Sm"
alias glogs="git log --all --graph --decorate --color --show-signature"

### SWEDISH RADIO CHANNELS ###
alias p1="mpg123 -@ http://sverigesradio.se/topsy/direkt/132-hi-mp3.m3u"
alias p2="mpg123 -@ http://sverigesradio.se/topsy/direkt/163-hi-mp3.m3u"
alias p2m="mpg123 -@ http://sverigesradio.se/topsy/direkt/1603-hi-mp3.m3u"
alias p3="mpg123 -@ http://sverigesradio.se/topsy/direkt/164-hi-mp3.m3u"
alias p4="mpg123 -@ http://sverigesradio.se/topsy/direkt/701-hi-mp3.m3u"
alias p4s="mpg123 -@ http://sverigesradio.se/topsy/direkt/701-hi-mp3.m3u"
alias sisu="mpg123 -@ http://sverigesradio.se/topsy/direkt/226-hi-mp3.m3u"

# The initial 'play' command is used to start Spotify if it isn't open
alias spiano="SpotifyControl play; sleep 1; SpotifyControl play spotify:user:spotify:playlist:37i9dQZF1DX4sWSpwq3LiO"
