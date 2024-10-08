#
# Set up environment variables for Hercules
#
# This script was created by /home/oky/hercules-helper/hercules-buildall.sh, Sat Oct  5 05:03:22 PM -05 2024
#

# LD_LIBRARY_PATH is often empty, and we don't want to error out on that
set +u

# We shouldn't be producing any output in non-interactive shells.
# This can cause scp, etc. to fail.

if [ ! -z "${PS1}" ]; then
    echo "Setting environment variables for Hercules"
fi

newpath="/home/oky/herctest/herc4x/bin"
if [ -d "$newpath" ] && [[ ":$PATH:" != *":$newpath:"* ]]; then
  # export PATH="${PATH:+"$PATH:"}$newpath"
    export PATH="$newpath${PATH:+":$PATH"}"
fi

newpath="/home/oky/herctest/herc4x/lib"
if [ -d "$newpath" ] && [[ ":$LD_LIBRARY_PATH:" != *":$newpath:"* ]]; then
  # export LD_LIBRARY_PATH="${LD_LIBRARY_PATH:+"$LD_LIBRARY_PATH:"}$newpath"
    export LD_LIBRARY_PATH="$newpath${LD_LIBRARY_PATH:+":$LD_LIBRARY_PATH"}"
fi

