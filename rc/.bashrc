export JAVA_HOME=$(/usr/libexec/java_home)

# Check for homebrew versions first
export PATH=/usr/local/bin:$PATH

# Scala installed via homebrew
# To use with IntelliJ, set the Scala home to:
#export SCALA_HOME=/usr/local/opt/scala/idea

alias ls='ls -Gp'
alias ll='ls -Gpaltrh'

# Add local bin to PATH
export PATH=~/bin:$PATH


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
