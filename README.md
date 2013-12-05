3proxy install script for Debian / Ubuntu VPS
======================================================

An attempt to install 3proxy as an elite high anonymous HTTP proxy with SSL support with a few command lines

Download, make executable and run with these lines :

    wget --no-check-certificate https://raw.github.com/benjamin74/3proxy/master/3proxyinstaller.sh
    chmod +x 3proxyinstaller.sh
    ./3proxyinstaller.sh

After install : CHANGE THE BLOODY DEFAULT USERNAME AND PASSWORD !!! (you can also change the port, default is 3128)

    nano /etc/3proxy/3proxy.cfg
    
Once you've change the username / password you can start the proxy (or reboot the VPS as 3proxy has been added to the init scripts and will autostart)

    /etc/3proxy/3proxy /etc/3proxy/3proxy.cfg &

