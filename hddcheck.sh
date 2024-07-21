#!/bin/bash

check="$(lsblk | grep -o ms)"
input="ms"
#echo "$check"

if [[ $check != $input ]]; then
curl -X POST https://maker.ifttt.com/trigger/server_drop/with/key/brG0jqXBACpIgCAURsF8U8
echo "HDD OFFLINE @ `date`"
else
echo "HDD ONLINE @ `date`"
fi
exit

