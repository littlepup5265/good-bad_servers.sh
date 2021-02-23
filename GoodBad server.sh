#!/bin/bash

$ for i in $(cat serverlist.txt)
> do
> if rosh -l root -n $i -t "yum check-update"
> then
> echo "$i" >> good-servers
> else
> echo "$i" >> bad-servers
> fi
> done
