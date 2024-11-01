echo ""
echo ""
echo ==============================================================================
echo ============================ INSTALL OGON ====================================
echo ==============================================================================
echo ""

sudo dnf install -y protobuf-devel.x86_64 protobuf-compiler.x86_64 protobuf-c-compiler.x86_64 boost-devel.x86_64 automake.noarch ca-certificates.noarch \
		 protobuf-c-devel.x86_64 systemd-pam.x86_64 pam-devel.x86_64 pam-libs.x86_64 dbus-devel.x86_64

git clone https://gl.rncb.ru/cpp_developers/ResearchAndDevelopment/ogon_rncb/ogon.git -b RedOS
cd ./ogon
mkdir -p build && cd build
cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=/opt/ogon -DCMAKE_PREFIX_PATH=/opt/ogon/ -DWITH_OPENH264=on ..
make install #this needs to be single threaded because of the integrated thrift build

cp misc/config.ini.debian /opt/ogon/etc/ogon/config.ini
sudo ln -s /opt/ogon/etc/dbus-1/system.d/ogon.SessionManager.conf /etc/dbus-1/system.d/
sudo service dbus reload
sudo cp ../misc/pam.d/ogon.suse /etc/pam.d/ogon

sudo cp misc/ogon-rdp-server.service /etc/systemd/system
sudo cp misc/ogon-session-manager.service /etc/systemd/system
sudo systemctl daemon-reload

cd ../..
mkdir -p /opt/ogon/var/run
