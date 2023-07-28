#!bin.sh
#GW2

ip tunnel add gw1 mode sit remote 10.0.0.1

ip tunnel show

#To check the interface 
 
ifconfig

#To activate the tunnel we must run this instruction

ip link set gw1 up

ip addr add 10.0.3.2/24 dev gw1

ip -6 route add 2000::/3 dev gw1


#To turn off or delete the tunnel we can use this instructions
#ip link set gw1 down
#ip link set gw1 del
