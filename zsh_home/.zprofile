export PHILCONFIG=$HOME/.philconfig
# echo "SOURCING ~/.zprofile" >&2

if [ -e /etc/zprofile ] ; then
    source /etc/zprofile
fi

# echo "... ~/.zprofile : sourcing PHILCONFIG/FILES/envvars" >&2
source $PHILCONFIG/FILES/envvars

export PHILRC_ZPROFILE=".zprofile_sourced_at_$(date "+%Y-%m-%d_%H%M")"

# Setting PATH for Python 3.8
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH
