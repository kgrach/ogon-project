cd ./ogon/build/

sudo cp misc/config.ini.debian /opt/ogon/etc/ogon/config.ini
sudo ln -s /opt/ogon/etc/dbus-1/system.d/ogon.SessionManager.conf /etc/dbus-1/system.d/
sudo service dbus reload
sudo cp ../misc/pam.d/ogon.debian /etc/pam.d/ogon

sudo cp misc/ogon-rdp-server.service /etc/systemd/system
sudo cp misc/ogon-session-manager.service /etc/systemd/system
sudo systemctl daemon-reload

cd ..

mkdir -p /opt/ogon/var/run

sed -i.backup 's%environment_add_string=WTSAPI_LIBRARY:/opt/ogon/lib64/ogon1/libogon-otsapi.so%environment_add_string=WTSAPI_LIBRARY:/opt/ogon/lib64/ogon1/libogon-otsapi.so;OGON_X11_DESKTOP:mate%' /opt/ogon/etc/ogon/config.ini

