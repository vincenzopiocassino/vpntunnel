#!bin.sh
#GW1

ip tunnel add gw2 mode sit remote 10.0.3.2

ip tunnel show

#To check the interface  

ifconfig

#To activate the tunnel we must run this instruction

ip link set gw2 up

ip addr add 10.0.0.1/24 dev gw2

ip -6 route add 2000::/3 dev gw2

#To turn off or delete the tunnel we can use this instructions
#ip link set gw2 down
#ip link set gw2 del
