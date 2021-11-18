#!/bin/bash
# copydir.sh

#  Copy all files in the current directory
#+ destination directory must be specified 
#+ on command line.

E_NOARGS=65

if [ -z "$1" ]   # Exit if no argument given.
then
  echo "Usage: `basename $0` directory-to-copy-to"
  exit $E_NOARGS
fi  

ls . | xargs -i -t cp ./{} $1

#  -t is "verbose" option.
#  -i is "replace strings" option.

exit 0
