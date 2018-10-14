#! /bin/bash
user_host="root@satont.ru"
load=$(ssh "$user_host" cat /proc/loadavg | awk '{print $1}')
memory=$(ssh "$user_host" free -h | awk '/Mem:/  {print$3"/"$2 }')
disk_used=$(ssh "$user_host" df -h --output=used /dev/vda1 | grep -E -o '[0-9].[0-9]?G')
disk_size=$(ssh "$user_host" df -h --output=size /dev/vda1 | grep -E -o '[0-9].[0-9]?G')
echo "<span foreground='#ffa502'>satont.ru</span> > <span foreground='#70a1ff'> $load</span> > <span foreground='#adff00'> $memory</span> > <span foreground='#63cdda'> $disk_used/$disk_size</span>"