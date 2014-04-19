export JAVA_HOME=$(/usr/libexec/java_home)

# Check for homebrew versions first
export PATH=/usr/local/bin:$PATH

# Scala installed via homebrew
# To use with IntelliJ, set the Scala home to:
export SCALA_HOME=/usr/local/opt/scala/idea

# Git prompt
source /Users/kristofer/Projects/git-prompt/git-prompt
export PS1="\$(git_prompt)"$PS1

#Tomcat
export CATALINA_HOME=/usr/local/Cellar/tomcat/7.0.53/libexec

bupdate() {
    for action in update doctor upgrade cleanup
    do
        echo "--> brew $action" && brew $action
    done
}

# https://gist.github.com/thelucid/6038901 - OSX Terminal – Tab and window shortcuts
function tabname {
  # Will use current dir name if called without arg.
  printf "\e]1;${1-$(basename `pwd`)}\a"
}
function winname {
  # Will use current dir name if called without arg.
  printf "\e]2;${1-$(basename `pwd`)}\a"
}
function tab {
  # Will cd into current dir if called without arg.
  osascript -e 'tell application "Terminal"' \
            -e 'tell application "System Events" to keystroke "t" using {command down}' \
            -e "do script \"cd `pwd` && cd ${1-.} && tabname && clear\" in front window" \
            -e 'end tell' > /dev/null
}
alias t='tab'
alias tn='tabname'
alias wn='winname'

alias p1="tn 'SR P1'; mpg123 -@ http://sverigesradio.se/topsy/direkt/132-hi-mp3.m3u"
alias p2="tn 'SR P2'; mpg123 -@ http://sverigesradio.se/topsy/direkt/163-hi-mp3.m3u"
alias p2m="tn 'SR Klassiskt'; mpg123 -@ http://sverigesradio.se/topsy/direkt/1603-hi-mp3.m3u"
alias p3="tn 'SR P3'; mpg123 -@ http://sverigesradio.se/topsy/direkt/164-hi-mp3.m3u"
alias p4="tn 'SR P4'; mpg123 -@ http://sverigesradio.se/topsy/direkt/701-hi-mp3.m3u"
alias p4s="tn 'SR Radiosporten'; mpg123 -@ http://sverigesradio.se/topsy/direkt/179-hi-mp3.m3u"
