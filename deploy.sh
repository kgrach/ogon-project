sudo dnf install -y thrift pcsc-lite
#sudo rm -rf /opt/ogon
sudo mkdir -p /opt/ogon/
sudo chown ${USER}:${USER} -R /opt/ogon

scp -r gka@192.168.1.43:/opt/ogon/ /opt/

sudo ln -s /opt/ogon/etc/dbus-1/system.d/ogon.SessionManager.conf /etc/dbus-1/system.d/
sudo service dbus reload
sudo cp /opt/ogon/misc/ogon.suse /etc/pam.d/ogon
sudo cp /opt/ogon/misc/ogon-rdp-server.service /etc/systemd/system
sudo cp /opt/ogon/misc/ogon-session-manager.service /etc/systemd/system
sudo systemctl daemon-reload

sudo mkdir -p /etc/ssl/private
sudo cp /opt/ogon/misc/certs/ssl-cert-snakeoil.key /etc/ssl/private/
sudo cp /opt/ogon/misc/certs/ssl-cert-snakeoil.pem /etc/ssl/certs/
sudo cp /opt/ogon/misc/pam/* /etc/pam.d/

/opt/ogon/sbin/ogon-get-openh264-codec

sudo rm /opt/ogon/var/run/*

sudo chown root:root -R /opt/ogon

sudo systemctl enable ogon-rdp-server
sudo systemctl start ogon-rdp-server