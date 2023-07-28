# IPv6 over IPv4 Tunneling with IPSEC

## Objectives
The main objective of this project is to understand the functioning of information encapsulation through the use of tunnels and how information is transmitted from one point to another. 
In this example a company has decided to adopt IPv6 for its local network due to the multitude of advantages this protocol version offers over IPv4. The company's executives have further decided to connect their offices in Spain and England using IPv6.

The transition from IPv4 to IPv6 is a slow process. To facilitate IPv6 communication between the offices, the company has opted for an encapsulation method based on tunnels. This allows them to send IPv6 packets over the existing Internet infrastructure (IPv4), enabling IPv6 over IPv4.

Initially, the company wants to establish an operational tunnel (without encrypting the data) and later add transport-level encryption.

## Scenario
The actions for this project will take place in the following scenario:

The setup in the "p3.imn" scenario consists of two local networks (company offices) each comprising a client computer and a router communicating via IPv6. Additionally, these routers have a network interface connected directly to the Internet with IPv4 addresses (dual-stack routers).

Internet is represented through the three routers (ISPs). We can observe that the IPs of these routers are IPv4.


## Requirements
To run this project, you'll need the following:
- CORE Network Emulator
- iproute2
- IPSEC for data encryption (AH and ESP architectures)
- IPv6-capable networking equipment and infrastructure

## Functionality to Implement

The èrpject consists of performing the following configurations using iproute2 and IPSEC:

1. **Establish an Unencrypted Tunnel:** Create an unencrypted tunnel between the two routers in each office, specifically between GW1 and GW2. This tunnel will facilitate message exchange between clients C1 and C2.

2. **Analyze ICMPv6 Messages:** Analyze the format of an ICMPv6 message sent from C1 to C2, which is intercepted at GW1 and ISP2. This analysis will provide insights into the encapsulation and routing processes occurring in the network.

3. **Encrypt Transport-Level Traffic:** Encrypt all transport-level traffic originating from GW1 and destined for GW2, and vice versa. This encryption will be achieved using the tool IPSEC1. By encrypting the data, the company can enhance network security and protect sensitive information during transmission.

4. **Analyze Intercepted ICMPv6 Messages:** Analyze of an ICMPv6 message sent from C1 to C2, which is intercepted at ISP3 and GW2 (eth1). Understanding the differences in the format will help identify how the encrypted traffic is processed and routed through the network.

