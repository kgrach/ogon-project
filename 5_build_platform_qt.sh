git clone https://github.com/kgrach/ogon-platform-qt.git
cd ./ogon-platform-qt 
./install_depends_ubuntu22.sh 
./build.sh 
cd ..

sudo ln -s /opt/ogon/lib/qt5/plugins/platforms/libogon.so /usr/lib/x86_64-linux-gnu/qt5/plugins/platforms/libogon.so

