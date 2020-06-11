#!/bin/bash
to="chilakasainaveen@gmail.com"
threshold=6000
free_ram=$(free -mt | grep -E "Total:" | awk '{print $4}')
if [[ $free_ram -le $threshold ]]
then
	echo -e  "Your RAM SIZE is Not Under Control\nAvialable RAM is $free_ram" | /bin/mail -s "RAM INFO: " $to
fi

