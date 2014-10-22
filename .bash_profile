#
#
#http://stackoverflow.com/questions/14416274/how-to-suppress-or-customize-mac-terminal-shell-prompt
#
#
#The prompt is defined by the environment variable PS1 which you can define in .bash_profile
#
#To edit it, open or create the (hidden) file .bash_profile:
#
#nano .bash_profile
#
#and add a line that says
#
#export PS1=""
#
#Between the quotation marks, you can insert what you would like as your terminal prompt. You can also use variables there:
#
#    \d – date
#    \t – time
#    \h – hostname
#    \# – command number
#    \u – username
#    \W – current directory (e.g.: Desktop)
#    \w – current directory path (e.g.: /Users/Admin/Desktop)
#
#The default prompt for common Linux distributions would be \w $, which evaluates to ~ $ in your home directory or e.g. /Users $ somewhere else.
#
#If you want to remove the UserName part, your choice would be \h: \w$.
#
#Once you made your changes, save the file with Command+O, Return, Command+X.
#
#

export PS1="\h: \w "
