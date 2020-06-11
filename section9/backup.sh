#!/bin/bash
#Author:Naveen
src="/var/log/httpd"
dest="/backups"
date=$(date '+%b-%d-%y-%H-%M-%S')
[[ -e $dest ]] || mkdir $dest
tar -cvpzf $dest/mybackup-${date}.tar.gz $src


