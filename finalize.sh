echo ""
echo ""
echo ==============================================================================
echo ========================== INSTALL CERTIFICATES ==============================
echo ==============================================================================
echo ""
sudo mkdir -p /etc/ssl/private
sudo cp certs/ssl-cert-snakeoil.key /etc/ssl/private/
sudo cp certs/ssl-cert-snakeoil.pem /etc/ssl/certs/
sudo cp pam/* /etc/pam.d/

sudo cp -r ./pam /opt/ogon/misc
sudo cp -r ./certs /opt/ogon/misc

echo ""
echo ""
echo ==============================================================================
echo ============================ CHANGE CONFIG ===================================
echo ==============================================================================
echo ""
#ОБЯЗАТЕЛЬНО!!! в /opt/ogon/etc/ogon/config.ini добавить OGON_X11_DESKTOP:mate
#environment_add_string=WTSAPI_LIBRARY:/opt/ogon/lib64/ogon1/libogon-otsapi.so;OGON_X11_DESKTOP:mate
#или для конкретного пользователя своя графическая оболочка
#environment_add_string=OGON_X11_DESKTOP:mate
#sed -i.backup 's%environment_add_string=WTSAPI_LIBRARY:/opt/ogon/lib64/ogon1/libogon-otsapi.so%environment_add_string=WTSAPI_LIBRARY:/opt/ogon/lib64/ogon1/libogon-otsapi.so;OGON_X11_DESKTOP:mate%' /opt/ogon/etc/ogon/config.ini

echo ""
echo ""
echo ==============================================================================
echo ============================ INSTALL H264-codec ==============================
echo ==============================================================================
echo ""
cd ogon/build
./misc/ogon-get-openh264-codec

sudo chown root:root -R /opt/ogon


echo ""
echo ""
echo ==============================================================================
echo ============================ START OGON SERVICE ==============================
echo ==============================================================================
echo ""
sudo systemctl enable ogon-rdp-server
sudo systemctl start ogon-rdp-server

# для пророса дисков из локльной системы на удаленную нужно запустить скрипт на терминальном сервере
/opt/ogon/bin/ogon-start-vc.sh
# на удаленной системе также нужно запустить этот же скрипт, после чего появится диск, но перед подклчением к терминальному серверу, нужно подключить (расшарить) необходимый диск.

