#!/bin/bash
if which httpd &> /dev/null
then
  echo "httpd is present"
  systemctl status httpd
  systemctl start httpd
  systemctl enable httpd
fi
