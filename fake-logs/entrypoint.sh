#!/bin/sh

# color
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[0;33m"
blue="\033[0;34m"

bwhite="\033[1;37m"

no_color="\033[0m"

n=-1
c=0

if [ -n "$3" ]
then
   n=$3
fi

while [ $n -ne $c ]
do
   WAIT=$(shuf -i $1-$2 -n 1)
   sleep $(echo "scale=4; $WAIT/1000" | bc)
   I=$(shuf -i 1-4 -n 1)
   D=`date -Iseconds`
   case "$I" in
      "1") echo -e "${bwhite}$D${no_color} ${red}ERROR${no_color} An error is usually an exception that has been caught and not handled."
      ;;
      "2") echo -e "${bwhite}$D${no_color} ${green}INFO${no_color} This is less important than debug log and is often used to provide context in the current task."
      ;;
      "3") echo -e "${bwhite}$D${no_color} ${yellow}WARN${no_color} A warning that should be ignored is usually at this level and should be actionable."
      ;;
      "4") echo -e "${bwhite}$D${no_color} ${blue}DEBUG${no_color} This is a debug log that shows a log that can be ignored."
      ;;
   esac
   c=$(( c+1 ))
done
