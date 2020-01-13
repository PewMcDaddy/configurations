#!/bin/bash
# echo ".bash_profile START"
export PHILCONFIG=$(cd -P $(dirname $(readlink ${BASH_SOURCE[0]}))/.. > /dev/null && pwd)

source $PHILCONFIG/FILES/initutils

setup_ordenv(){
   echo $(tput setab 2)Starting ordenv$(tput sgr 0)
   eval_and_print "export ORDENV_SITE_PROFILE=20180130"
   eval_and_print "export ORDENV_GROUP_PROFILE=eccc/cmc/1.6"
   eval_and_print "export ORDENV_COMM_PROFILE=eccc/20180130"
   eval_and_print "source /fs/ssm/main/env/ordenv-boot-20180430.sh"
   ### environment setup - env
   eval_and_print "export EC_ATOMIC_PROFILE_VERSION=1.6"
   echo $(tput setab 2)END Ordenv stuff$(tput sgr 0)
}
mount_ppp(){
     mkdir -p ~/ppp1/spooki/build
     mkdir -p ~/ppp1/spooki/source
     sshfs phc001@ppp1:/fs/site1/dev/eccc/cmd/s/phc001/spooki/build ~/ppp1/spooki/build
     sshfs phc001@ppp1:/fs/home/fs1/eccc/cmd/cmds/phc001/workspace/spooki ~/ppp1/spooki/source
     mkdir -p ~/ppp2/spooki/build
     mkdir -p ~/ppp2/spooki/source
     sshfs phc001@ppp2:/fs/site1/dev/eccc/cmd/s/phc001/spooki/build ~/ppp2/spooki/build
     sshfs phc001@ppp2:/fs/home/fs1/eccc/cmd/cmds/phc001/workspace/spooki ~/ppp2/spooki/source

     mkdir -p ~/ppp4/spooki/source
     sshfs phc001@ppp4:/fs/homeu1/eccc/cmd/cmds/phc001/workspace/spooki ~/ppp4/spooki/source
}



if [ -z $PHILRC_BASH_PROFILE ] ; then
    # Acutal bash_profile
    if [ $(hostname) = kano ] ; then
       # mount_ppp
       true
    fi

    # If ssh login shell that I would like to be interactive
    # if ! [ -z "$SSH_CLIENT" ] && ! [ -z "$SSH_TTY" ] && [ -z $PHILRC_BASHRC ]; then
    # TEMPORARY SOLUTION: ALWAYS SOURCE BASHRC, (anyway it contains a check that the shell is interactive)
    if true ; then
       source ~/.bashrc
    fi
else
    # if bash_profile has already been sourced, then this file is most likely
    # being sourced becasue TMUX has started a login shell.  In that case, we
    # want to source our bashrc
    source ~/.bashrc
    return
fi

export PHILRC_BASH_PROFILE="bash_profile_loaded_at_$(date "+%Y-%m-%d_%H%M")"
# echo ".bash_profile END"