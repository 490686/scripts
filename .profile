# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# By default, Terminal starts the shell via /usr/bin/login, which makes the shell a login shell. 
# On every platform (not just Mac OS X) bash does not use .bashrc for login shells (only /etc/profile 
# and the first of .bash_profile, .bash_login, .profile that exists and is readable). This is why "put 
# source ~/.bashrc in your .bash_profile" is standard advice

# http://apple.stackexchange.com/questions/12993/why-doesnt-bashrc-run-automatically

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
	debian_chroot=$(cat /etc/debian_chroot)
fi

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

#if [ -f ~/.bash_aliases ]; then
#	. ~/.bash_aliases
#fi

	alias ls='ls -G'

# some more ls aliases
alias ll='ls -lrt'
alias lh='ls -lrth'
alias l='ls -CF'
alias rm='rm -i'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi



#######################################
alias lprtxt='lpr -o cpi=15 -o lpi=9 -o page-left=72 -o prettyprint'

alias ml='matlab -nojvm -nosplash'

export GS_LIB=/usr/share/fonts/type1/gsfonts
export repo=https://gs-fftb-collab.gsfc.nasa.gov/svn/navigator
export data=https://gs-fftb-collab.gsfc.nasa.gov/svn/navigator/data
export lulich=https://gs-fftb-collab.gsfc.nasa.gov/svn/flight/lulich
export sw=https://gs-fftb-collab.gsfc.nasa.gov/svn/navigator/software
export flight=https://gs-fftb-collab.gsfc.nasa.gov/svn/navigator/software/flight
export rf=https://gs-fftb-collab.gsfc.nasa.gov/svn/navigator/software/docs/sc_test_gse_config
export navi5k=https://gs-fftb-collab.gsfc.nasa.gov/svn/navigator/software/navi5k
export branches=https://gs-fftb-collab.gsfc.nasa.gov/svn/navigator/software/flight/branches
export mms_etu=https://gs-fftb-collab.gsfc.nasa.gov/svn/fftb/mms_etu
export spirent=https://gs-fftb-collab.gsfc.nasa.gov/svn/fftb/spirent
export fftb=https://gs-fftb-collab.gsfc.nasa.gov/svn/fftb
export mmsasistsvn=https://gs461vm-firefly.gsfc.nasa.gov/svn/fftb/trunk/asist/mms
export gpmasistsvn=https://gs-422-svn1.gsfc.nasa.gov/svn/labs

# ^p check for partial match in history
bind -m vi-insert "\C-p":dynamic-complete-history
# ^n cycle through the list of partial matches
bind -m vi-insert "\C-n":menu-complete
# ^l clear screen
bind -m vi-insert "\C-l":clear-screen

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

alias xfig='xfig -specialtext -latexfonts -startlatexFont default'
alias mygrep='grep -rIn --exclude-dir=.svn --color=auto'

alias vim='vim --servername vimtex'
alias gvim='mvim --servername vimtex'

# quick jumps to local dirs
alias gmat='cd ~/work/nasa/gmat'
alias mms='cd ~/work/nasa/mms'
alias gpm='cd ~/work/nasa/gpm'
alias jaxa='cd ~/work/nasa/gpm/jaxa'
alias sc='cd ~/work/nasa/sc_test_gse_config'
alias sp='cd ~/flight/test/mms/spacecraft'
alias sbl='cd ~/work/nasa/luthcke'

# quick ssh connections to lab workstations and servers
#alias aa='ssh -X gpssim@gs-fftb-gpsbencha'
#alias bb='ssh -X gpssim@gs-fftb-gpsbenchb'
#alias cc='ssh -X gpssim@gs-fftb-gpsbenchc'
#alias dd='ssh -X gpssim@gs-fftb-gpsbenchd'
#alias ee='ssh -X gpssim@gs-fftb-gpsbenche'
#alias ff='ssh -X gpssim@gs-fftb-gpsbenchf'
#alias gg='ssh -X gpssim@gs-fftb-gpsbenchg'
#alias hh='ssh -X gpssim@gs-fftb-gpsbenchh'
#alias mm='ssh -X gpssim@gs-fftb-gpsbenchm'
#alias tdl='ssh -X tlulich@osiris'
#alias analysis='ssh -X gpssim@gs-fftb-analysis'
#alias asist='ssh -X gpm@gs461ecn2171316.gsfc.nasa.gov'
alias stx='ssh tlulich@xyz4'
alias stc='ssh tlulich@cisixs1a'

# gpm asist repo tunnel
# https://gs-422-svn1.gsfc.nasa.gov/svn/labs
#function tunnel_gpmsvn() {
#sudo ssh -C -L 443:128.183.223.79:443 "$1"@gs-fftb-collab.gsfc.nasa.gov
#}

# mms asist repo tunnel 
# https://gs461vm-firefly.gsfc.nasa.gov/svn/fftb/trunk/asist/mms/
#function tunnel_mmssvn() {
#sudo ssh -C -L 443:128.183.220.107:443 "$1"@gs-fftb-collab.gsfc.nasa.gov
#}
ulimit -c unlimited

umask 0027

# Set up the path, BABY!
PATH="/sbin:/usr/bin:/bin:/usr/sbin:/usr/local/bin:/usr/X11/bin:/Applications:~/scripts"; export PATH;

##
# Your previous /Users/tylerlulich/.profile file was backed up as /Users/tylerlulich/.profile.macports-saved_2013-06-12_at_14:03:10
##

# MacPorts Installer addition on 2013-06-12_at_14:03:10: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/Applications/MATLAB_R2014a.app/bin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# Something for fink I found on a forum.  Google it.
# Disabled on 15Oct13
# test -r /sw/bin/init.sh && . /sw/bin/init.sh

function restart_vb(){
sudo /Library/StartupItems/VirtualBox/VirtualBox restart
}



