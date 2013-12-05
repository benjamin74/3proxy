apt-get update && apt-get -y upgrade
apt-get install -y build-essential
wget http://3proxy.ru/0.6.1/3proxy-0.6.1.tgz
tar xzf 3proxy-0.6.1.tgz
cd 3proxy-0.6.1
make -f Makefile.Linux
cd src
mkdir /etc/3proxy/
mv 3proxy /etc/3proxy/
cd /etc/3proxy/
wget 
