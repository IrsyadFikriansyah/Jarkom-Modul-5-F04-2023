iptables -F
iptables -A INPUT -p tcp --dport 22 -m time --timestart 08:00 --timestop 16:00 --weekdays Mon,Tue,Wed,Thu,Fri -s 192.223.8.0/22 -j ACCEPT