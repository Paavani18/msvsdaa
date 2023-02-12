wget -L "https://sourceforge.net/projects/ngspice/files/ng-spice-rework/39/ngspice-39.tar.gz" --no-check-certificate
tar -xzvf ngspice-39.tar.gz
cd ngspice-39
mkdir release
cd release/
sudo apt-get update
sudo apt-get -y install libxaw7-dev
sudo apt-get -y install xterm
../configure  --with-x --with-readline=yes --disable-debug
make
sudo make install

