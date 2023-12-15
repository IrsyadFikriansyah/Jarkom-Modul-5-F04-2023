iptables -F
iptables -A INPUT -p tcp --dport 22 -s 192.223.8.0/22 -j ACCEPT
iptables -A INPUT -p tcp --dport 22 -j DROP