export JAVA_HOME=$(/usr/libexec/java_home)

# Scala installed via homebrew
# To use with IntelliJ, set the Scala home to:
export SCALA_HOME=/usr/local/opt/scala/idea

# Git prompt
source /Users/kristofer/Projects/git-prompt/git-prompt
export PS1="\$(git_prompt)"$PS1