#! /usr/sbin/setkey -f

# Flush the SPD and SAD
spdflush;
flush;

########FOR GW1##################

# Security Associations

add 10.0.0.1 10.0.3.2 esp 0x10001
       -E aes-cbc 0x56fec3445ff820f116f8701e1abf6c37;
add 10.0.3.2 10.0.0.1  esp 0x10001
       -E aes-cbc 0x56fec3445ff820f116f8701e1abf6c37;


# Security Policies

spdadd 10.0.0.1/24 10.0.3.2/24 any
-P out ipsec
esp/transport//require;

spdadd 10.0.3.2/24 10.0.0.1/24 any
-P in ipsec
esp/transport//require;


