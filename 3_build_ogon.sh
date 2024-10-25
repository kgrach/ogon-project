git clone https://github.com/kgrach/ogon.git
cd ./ogon
./install_depends_ubuntu22.sh 
./build.sh 
./install-openh264-codec.sh 
./install-services.sh
cd ..