echo ""
echo ""
echo ==============================================================================
echo ============================ INSTALL OGON ====================================
echo ==============================================================================
echo ""
# Эти пакеты отсутствуют в репозитории redos7
#pam-libs 
sudo dnf install -y protobuf-devel protobuf-compiler protobuf-c-compiler boost-devel automake ca-certificates protobuf-c-devel systemd-pam pam-devel dbus-devel

git clone https://github.com/kgrach/ogon.git -b RedOS
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

sed -i.backup 's%environment_add_string=WTSAPI_LIBRARY:/opt/ogon/lib64/ogon1/libogon-otsapi.so%environment_add_string=WTSAPI_LIBRARY:/opt/ogon/lib64/ogon1/libogon-otsapi.so;OGON_X11_DESKTOP:mate%' /opt/ogon/etc/ogon/config.ini
