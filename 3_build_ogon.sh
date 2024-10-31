git clone https://github.com/kgrach/ogon.git
cd ./ogon
git checkout RedOS8
./build.sh 
./install-openh264-codec.sh 
./install-services.sh
cd ..