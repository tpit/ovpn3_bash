# ovpn3_bash
v0.001
oVPN3 Client for linux Bash script. Just to make connecting and disconnecting and managing multiple profiles a tiny bit easier from the command line.

# How does it work?
Put this file in your directory of choice where you have your .ovpn profiles. Run it. You have to type your file names manually. That I will change in v0.002

# Initial output of script

tommie@pop-os:~/vpn$ ./ovpn.sh 
1) Connect
2) Disconnect
3) Current Tunnels
4) Quit
Want to connect, disconnect or view current tunnel? (1,2,3,4):

# Option 1 - Connect
Want to connect, disconnect or view current tunnel? (1,2,3,4): 1
Let's Connect to an oVPN

---------oVPN Files in dir-----------
another.ovpn  xyz.ovpn
-------------------------------------

Already active sessions if any:
-----------------------------------------------------------------------------
        Path: /net/openvpn/v3/sessions/8e6cbd50se98bs4df4saa60s2e6775f82aba
     Created: 2024-10-29 09:31:30                       PID: 40208
       Owner: tommie                                 Device: tun0
 Config name: xyz.ovpn  (Config not available)
Session name: xyz.ppiitt.nl
      Status: Connection, Client connected
-----------------------------------------------------------------------------

Which .ovpn profile do we connect to: 

# Option 2 - Disconnect
Want to connect, disconnect or view current tunnel? (1,2,3,4): 2
Let's terminate a session:
Current active sessions if any:

-----------------------------------------------------------------------------
        Path: /net/openvpn/v3/sessions/8e6cbd50se98bs4df4saa60s2e6775f82aba
     Created: 2024-10-29 09:31:30                       PID: 40208
       Owner: tommie                                 Device: tun0
 Config name: xyz.ovpn  (Config not available)
Session name: xyz.ppiitt.nl
      Status: Connection, Client connected
-----------------------------------------------------------------------------
Which .ovpn prfile are we disconnecting from now: 

# Option 3 - View tunnels
Want to connect, disconnect or view current tunnel? (1,2,3,4): 3
Lets view current open Tunnels: 3 which is Current Tunnels

-----------------------------------------------------------------------------
        Path: /net/openvpn/v3/sessions/8e6cbd50se98bs4df4saa60s2e6775f82aba
     Created: 2024-10-29 09:31:30                       PID: 40208
       Owner: tommie                                 Device: tun0
 Config name: xyz.ovpn  (Config not available)
Session name: xyz.ppiitt.nl
      Status: Connection, Client connected
-----------------------------------------------------------------------------

