iptables -F
iptables -A INPUT -j LOG --log-prefix "Paket INPUT yang di-drop: " --log-level 4 -m limit --limit 5/min
iptables -A OUTPUT -j LOG --log-prefix "Paket OUTPUT yang di-drop: " --log-level 4 -m limit --limit 5/min
iptables -A FORWARD -j LOG --log-prefix "Paket FORWARD yang di-drop: " --log-level 4 -m limit --limit 5/min