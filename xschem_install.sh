git clone https://github.com/StefanSchippers/xschem.git xschem_git
cd xschem_git/

sudo apt-get install libxpm-dev
sudo apt-get install libxpm4
sudo apt-get install libjpeg
sudo apt-get install xcb
./configure
make
sudo make install

