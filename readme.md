# Konfigurasi GNS3

## Router

* Aura
```sh
# ke NAT1
auto eth0
iface eth0 inet dhcp
up echo nameserver 192.168.122.1 > /etc/resolv.conf

# ke Heiter
auto eth1
iface eth1 inet static
address 192.223.14.149
netmask 255.255.255.252

# ke Frieren
auto eth2
iface eth2 inet static
address 192.223.14.141
netmask 255.255.255.252
```

* Heiter
```sh
# ke Aura
auto eth0
iface eth0 inet static
address 192.223.14.150
netmask 255.255.255.252
gateway 192.223.14.149
up echo nameserver 192.223.14.134 > /etc/resolv.conf

# ke TurkRegion
auto eth1
iface eth1 inet static
address 192.223.0.1
netmask 255.255.248.0

# ke Switch1
auto eth2
iface eth2 inet static
address 192.223.8.1
netmask 255.255.252.0
```

* Frieren
```sh
# ke Aura
auto eth0
iface eth0 inet static
address 192.223.14.142
netmask 255.255.255.252
gateway 192.223.14.141
up echo nameserver 192.223.14.134 > /etc/resolv.conf

# ke Stark
auto eth1
iface eth1 inet static
address 192.223.14.145
netmask 255.255.255.252

# ke Himmel
auto eth2
iface eth2 inet static
address 192.223.14.137
netmask 255.255.255.252
```

* Himmel
```sh
# ke LaubHills
auto eth0
iface eth0 inet static
address 192.223.12.1
netmask 255.255.254.0

# ke Frieren
auto eth1
iface eth1 inet static
address 192.223.14.138
netmask 255.255.255.252
gateway 192.223.14.137
up echo nameserver 192.223.14.134 > /etc/resolv.conf

# ke Switch3
auto eth2
iface eth2 inet static
address 192.223.14.1
netmask 255.255.255.128
```

* Fern
```sh
# ke Richter
auto eth0
iface eth0 inet static
address 192.223.14.133
netmask 255.255.255.252

# ke Switch3
auto eth1
iface eth1 inet static
address 192.223.14.2
netmask 255.255.255.128
gateway 192.223.14.1
up echo nameserver 192.223.14.134 > /etc/resolv.conf

# ke Switch2
auto eth2
iface eth2 inet static
address 192.223.14.129
netmask 255.255.255.252
```

## Server

* Richter
```sh
# ke Fern
auto eth0
iface eth0 inet static
address 192.223.14.134
netmask 255.255.255.252
gateway 192.223.14.133
up echo nameserver 192.168.122.1 > /etc/resolv.conf
```

* Revolte
```sh
# ke Switch2
auto eth0
iface eth0 inet static
address 192.223.14.130
netmask 255.255.255.252
gateway 192.223.14.129
up echo nameserver 192.223.14.134 > /etc/resolv.conf
```

* Sein
```sh
# ke Switch1
auto eth0
iface eth0 inet static
address 192.223.8.2
netmask 255.255.255.252
gateway 192.223.8.1
up echo nameserver 192.223.14.134 > /etc/resolv.conf
```

* Stark
```sh
# ke Frieren
auto eth0
iface eth0 inet static
address 192.223.14.146
netmask 255.255.255.252
gateway 192.223.14.145
up echo nameserver 192.223.14.134 > /etc/resolv.conf
```


## Client

* SchwerMountain
```sh
auto eth0
iface eth0 inet dhcp
# gateway 192.223.14.1
```

* LaubHills
```sh
auto eth0
iface eth0 inet dhcp
# gateway 192.223.12.1
```

* TurkRegion
```sh
auto eth0
iface eth0 inet dhcp
# gateway 192.223.0.1
```

* GrobeForest
```sh
auto eth0
iface eth0 inet dhcp
# gateway 192.223.8.1
```

## Routing 

* Aura
```sh
# kanan
route add -net 192.223.0.0 netmask 255.255.248.0 gw 192.223.14.150
route add -net 192.223.8.0 netmask 255.255.252.0 gw 192.223.14.150

# bawah 
route add -net 192.223.14.128 netmask 255.255.255.252 gw 192.223.14.142
route add -net 192.223.14.132 netmask 255.255.255.252 gw 192.223.14.142
route add -net 192.223.14.0 netmask 255.255.255.128 gw 192.223.14.142
route add -net 192.223.12.0 netmask 255.255.254.0 gw 192.223.14.142
route add -net 192.223.14.136 netmask 255.255.255.252 gw 192.223.14.142
route add -net 192.223.14.144 netmask 255.255.255.252 gw 192.223.14.142
```

* Frieren
```sh
# kiri
route add -net 192.223.14.128 netmask 255.255.255.252 gw 192.223.14.138
route add -net 192.223.14.132 netmask 255.255.255.252 gw 192.223.14.138
route add -net 192.223.14.0 netmask 255.255.255.128 gw 192.223.14.138
route add -net 192.223.12.0 netmask 255.255.254.0 gw 192.223.14.138
```

* Himmel
```sh
# bawah
route add -net 192.223.14.128 netmask 255.255.255.252 gw 192.223.14.2
route add -net 192.223.14.132 netmask 255.255.255.252 gw 192.223.14.2
```

# Pengerjaan Soal
## No.1
