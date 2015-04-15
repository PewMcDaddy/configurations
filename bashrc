#######################################################################
#	Bash configuration file
#	
#	This file is intended to be pointed to by a symlink
#	named .bashrc that you put in your home folder
#		$ ln -s <pathToThisFile> $HOME/.bashrc
#	
#	
#######################################################################


    # include .bashrc if it exists
    # if [ -f "$HOME/.bash_profile" ]; then
	# 	source $HOME/.bash_profile
    # fi

# Make bash history unlimited.
export HISTFILESIZE=
export HISTSIZE=
#	From "man bash":
#	
#	    If HISTFILESIZE is not set, no truncation is performed.

PS1='\[\e[0;32m\][\u@\h \W] \$ \[\e[0m\]'

alias INF2705='cd ~/Documents/INF2705-Infographie/tp3-orbite/inf2705-base'


alias INF1995='firefox http://www.groupes.polymtl.ca/inf1995/tp/'
alias docAtmel='gvfs-open ~/Documents/docAtmel.pdf'
# Put the PDF of the Atmel documentation in the documents folder.

alias docAVRLibC='firefox http://www.nongnu.org/avr-libc/user-manual/index.html'
alias chrome='google-chrome'
alias facebook='google-chrome www.facebook.com'
alias INF1995='google-chrome http://www.groupes.polymtl.ca/inf1995/tp/'
alias hotmail='google-chrome www.hotmail.com'
alias ssh-school='ssh l4712-05.info.polymtl.ca -l phcarb'

#	# Lancer le TP4 a chaque fois qu'on ouvre un terminal 
#	nohup ~/Documents/FedoraInstall/INF1600_TP4/tp4 > /dev/null 2>&1 &
#	# nohup <programme> > /def/null 2>&1 &  pour deconnecter le programme.
alias ls='ls --color'