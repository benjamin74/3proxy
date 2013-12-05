3proxy install script for Debian / Ubuntu VPS
======================================================

A simple script (without any russian in it, yeepeeh) to install the lightweight russian proxy: 3proxy (http://3proxy.ru/) as an elite high anonymous HTTP proxy with SSL support with a few command lines. This script has been created to bypass the fact that Squid3 proxy isn't compiled with SSL support and is an absolute nightmare to compile in Debian right now.

This setup has been created to quickly install a proxy on small lowendbox VPS mostly for "google rank analysis" / scraping.

**MANUAL :**

Download, make executable and run with these lines :

    wget --no-check-certificate https://raw.github.com/benjamin74/3proxy/master/3proxyinstaller.sh
    chmod +x 3proxyinstaller.sh
    ./3proxyinstaller.sh

After install : CHANGE THE BLOODY DEFAULT USERNAME AND PASSWORD !!! (you can also change the port, default is 3128)

    nano /etc/3proxy/3proxy.cfg
    
Example change line inside 3proxy.cfg :
    
    users johndoe:CL:johndoepassword123
    
into this :

    users michael:CL:PAssWord99
    
to change the proxy username to "michael" and the password to "PAssWord99"
    
Once you've change the username / password you can start the proxy (or reboot the VPS as 3proxy has been added to the init scripts and will autostart)

    /etc/3proxy/3proxy /etc/3proxy/3proxy.cfg &

**Script tested on december 5, 2013 on the following fresh VPS install distros :**

- Debian 6 32bits
- Debian 7 32bits
- Ubuntu 12.10 32bits
- Ubuntu 12.04 32bits

(all images from bluevm VPS provider)
