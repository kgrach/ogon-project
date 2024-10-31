sudo chown root:root -R /opt/ogon

sudo systemctl enable ogon-rdp-server.service
sudo systemctl start ogon-rdp-server.service

sudo systemctl enable ogon-session-manager.service 
sudo systemctl start ogon-session-manager.service 