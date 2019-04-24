source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library
antigen use oh-my-zsh

# catimg some_picture.jpg
antigen bundle catimg

# colorize you man pages
antigen bundle colored-man-pages

# ccat <file> [files]: colorize the contents of the file (or files, if more than one are provided). If no arguments are passed it will colorize the standard input or stdin.
# cless <file> [files]: colorize the contents of the file (or files, if more than one are provided) and open less. If no arguments are passed it will colorize the standard input or stdin.
antigen bundle colorize

# example as below:
# $ mutt
# The program 'mutt' can be found in the following packages:
#  * mutt
#  * mutt-kz
#  * mutt-patched
# Try: sudo apt install <selected package>
antigen bundle command-not-found

# example as below:
# ~$ cd Projects
# ~/Projects$ cd Hacktoberfest
# ~/Projects/Hacktoberfest$ cd oh-my-zsh
# ~/Projects/Hacktoberfest/oh-my-zsh$ dirs -v
# 0       ~/Projects/Hacktoberfest/oh-my-zsh
# 1       ~/Projects/Hacktoberfest
# 2       ~/Projects
# 3       ~
antigen bundle dircycle

# cd -<TAB>
antigen bundle dirpersist

# The git plugin provides many aliases and a few useful functions
# See also: https://github.com/robbyrussell/oh-my-zsh/wiki/Plugin:git
antigen bundle git

# This plugin adds completion for Git
# and git repo marked as clean or dirty using "✔" and "✗"
antigen bundle gitfast

# This plugin provides completion definitions for some of the commands defined by git-extras
antigen bundle git-extras

# Provides a couple of convenient aliases for using the history command to examine your command line history
# Usage
# If h is called, your command history is listed. Equivalent to using history
# If hsi is called with an argument, a case insensitive grep search is performed on your command history, looking for commands that match the argument provided
# If hsi is called without an argument you will help on grep arguments
antigen bundle history

# you can type in any part of any previously entered command and press the UP and DOWN arrow keys to cycle through the matching commands
antigen bundle history-substring-search

# pp_json - pretty prints json
# is_json - returns true if valid json; false otherwise
# urlencode_json - returns a url encoded string for the given json
# urldecode_json - returns decoded json for the given url encoded string
antigen bundle jsontools

# Keeps track of the last used working directory and automatically jumps into it for new shells
antigen bundle last-working-dir

# nmap_open_ports - Scan for open ports on target
# nmap_list_interfaces - List all network interfaces on host where the command runs
# nmap_slow - Slow scan that avoids to spam the targets logs
# nmap_fin - Scan to see if hosts are up with TCP FIN scan
# nmap_full - Aggressive full scan that scans all ports, tries to determine OS and service versions
# nmap_check_for_firewall - TCP ACK scan to check for firewall existence
# nmap_ping_through_firewall - Host discovery with SYN and ACK probes instead of just pings to avoid firewall restrictions
# nmap_fast - Fast scan of the top 300 popular ports
# nmap_detect_versions - Detects versions of services and OS, runs on all ports
# nmap_check_for_vulns - Uses vulscan script to check target services for vulnerabilities
# nmap_full_udp - Same as full but via UDP
# nmap_traceroute - Try to traceroute using the most common ports
# nmap_full_with_scripts - Same as nmap_full but also runs all the scripts
# nmap_web_safe_osscan - Little "safer" scan for OS version as connecting to only HTTP and HTTPS ports doesn't look so attacking.
antigen bundle nmap

# pip zsh completion
antigen bundle pip

# This plugin loads pyenv into the current shell and provides prompt info via
# the 'pyenv_prompt_info' function. Also loads pyenv-virtualenv if available
antigen bundle pyenv

# Easily prefix your current or previous commands with sudo by pressing <esc> twice
antigen bundle sudo

# Alias	Command	Description
# ta	tmux attach -t	Attach new tmux session to already running named session
# tad	tmux attach -d -t	Detach named tmux session
# ts	tmux new-session -s	Create a new named tmux session
# tl	tmux list-sessions	Displays a list of running tmux sessions
# tksv	tmux kill-server	Terminate all running tmux sessions
# tkss	tmux kill-session -t	Terminate named running tmux session
# tmux	_zsh_tmux_plugin_run	Start a new tmux session
antigen bundle tmux

# Command	Description
# urlencode	URL-encodes the given string
# urldecode	URL-decodes the given string
antigen bundle urltools

# This ZSH plugin enhances the terminal environment with 256 colors
antigen bundle chrissicool/zsh-256color

# An oh-my-zsh plugin to help remembering those aliases you defined once
antigen bundle djui/alias-tips

# This plugin show platforms version
# Support: Nodejs, NPM, Docker, Go, Python, Elixir and Ruby
antigen bundle guiferpa/aterminal

# ZSH plugin to automatically switch python virtualenvs as you move between directories
antigen bundle MichaelAquilina/zsh-autoswitch-virtualenv

# Show execution time for long commands in zsh
antigen bundle popstas/zsh-command-time

# Jump back to a specific directory, without doing `cd ../../..`
# usage: bd <TAB>
antigen bundle Tarrasch/zsh-bd

# It suggests commands as you type, based on command history
antigen bundle zsh-users/zsh-autosuggestions

# Additional completion definitions for Zsh
# Using packages: Debian/Ubuntu and other several distributions
antigen bundle zsh-users/zsh-completions

# Fish shell like syntax highlighting for Zsh
# this should be the last bundle
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train
antigen apply

# set vim as default editor
export VISUAL="vim"
export EDITOR="vim"

# fzf: A command-line fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# add your zsh code in this file
source .zshrc.local
