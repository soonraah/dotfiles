#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

export JAVA_HOME="$(/usr/libexec/java_home)"
export HADOOP_HOME=/usr/local/Cellar/hadoop/2.7.1
export HIVE_HOME=/usr/local/Cellar/hive/1.2.1/libexec

