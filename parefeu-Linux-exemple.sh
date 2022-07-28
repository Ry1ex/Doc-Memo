#!/bin/sh
###
# Script Pare-feu pour Linux utilisant iptables
# Le script est commenté mais n'offre aucune garantie
# A vous de l'adapter à vos besoins !
###
# Mise à 0
iptables -t filter -F
iptables -t filter -X
echo "Mise à 0"
# On bloque tout
iptables -t filter -P INPUT DROP
iptables -t filter -P FORWARD DROP
iptables -t filter -P OUTPUT DROP
# On drop les scans XMAS et NULL.
iptables -A INPUT -p tcp --tcp-flags FIN,URG,PSH FIN,URG,PSH -j DROP
iptables -A INPUT -p tcp --tcp-flags ALL ALL -j DROP
iptables -A INPUT -p tcp --tcp-flags ALL NONE -j DROP
iptables -A INPUT -p tcp --tcp-flags SYN,RST SYN,RST -j DROP
# Dropper silencieusement tous les paquets broadcastés.
iptables -A INPUT -m pkttype --pkt-type broadcast -j DROP
echo "Interdiction"
# Ne pas casser les connexions établies
iptables -A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -A OUTPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
# Autorise le loopback (127.0.0.1)
iptables -t filter -A INPUT -i lo -j ACCEPT
iptables -t filter -A OUTPUT -o lo -j ACCEPT
echo "Loopback"
# ICMP (le ping)
iptables -t filter -A INPUT -p icmp -j ACCEPT
iptables -t filter -A OUTPUT -p icmp -j ACCEPT
echo "Ping ok"
# SSH IN/OUT
iptables -t filter -A INPUT -p tcp --dport 22 -j ACCEPT
iptables -t filter -A OUTPUT -p tcp --dport 22 -j ACCEPT
echo "SSH ok"
# DNS In/Out
iptables -t filter -A OUTPUT -p tcp --dport 53 -j ACCEPT
iptables -t filter -A OUTPUT -p udp --dport 53 -j ACCEPT
iptables -t filter -A INPUT -p tcp --dport 53 -j ACCEPT
iptables -t filter -A INPUT -p udp --dport 53 -j ACCEPT
echo "dns ok"
# NTP Out
iptables -t filter -A OUTPUT -p udp --dport 123 -j ACCEPT
echo "ntp ok"
# HTTP + HTTPS Out
iptables -t filter -A OUTPUT -p tcp --dport 80 -j ACCEPT
iptables -t filter -A OUTPUT -p tcp --dport 443 -j ACCEPT
# HTTP + HTTPS In
iptables -t filter -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -t filter -A INPUT -p tcp --dport 443 -j ACCEPT
iptables -t filter -A INPUT -p tcp --dport 8443 -j ACCEPT
echo "http ok"
# FTP Out
iptables -t filter -A OUTPUT -p tcp --dport 21 -j ACCEPT
iptables -t filter -A OUTPUT -p tcp --dport 20 -j ACCEPT
# FTP In
# imodprobe ip_conntrack_ftp # ligne facultative avec les serveurs OVH
iptables -t filter -A INPUT -p tcp --dport 20 -j ACCEPT
iptables -t filter -A INPUT -p tcp --dport 21 -j ACCEPT
iptables -t filter -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
echo "ftp ok"
# Mail SMTP:25
iptables -t filter -A INPUT -p tcp --dport 25 -j ACCEPT
iptables -t filter -A OUTPUT -p tcp --dport 25 -j ACCEPT
# Mail POP3:110
iptables -t filter -A INPUT -p tcp --dport 110 -j ACCEPT
iptables -t filter -A OUTPUT -p tcp --dport 110 -j ACCEPT
# Mail IMAP:143
iptables -t filter -A INPUT -p tcp --dport 143 -j ACCEPT
iptables -t filter -A OUTPUT -p tcp --dport 143 -j ACCEPT
# Mail POP3S:995
iptables -t filter -A INPUT -p tcp --dport 995 -j ACCEPT
iptables -t filter -A OUTPUT -p tcp --dport 995 -j ACCEPT
echo "mail ok"
# On log les paquets en entrée.
iptables -A INPUT -j LOG
# On log les paquets forward.
iptables -A FORWARD -j LOG 

# AUTRE (optionnel et à modifier au besoin)
#iptables -t filter -A INPUT -p tcp --dport AUTRE_PORT -j ACCEPT
# exemple :
# Mysql
#iptables -t filter -A INPUT -p tcp --dport 3306 -j ACCEPT
