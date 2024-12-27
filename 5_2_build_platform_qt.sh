cd ./ogon-platform-qt 

/usr/lib/qtchooser/qtchooser -qt=5 -run-tool=qmake ADDITIONAL_PATHS=/opt/ogon/lib/:/opt/ogon/lib/x86_64-linux-gnu/pkgconfig/:/opt/ogon/lib64/ PREFIX=/opt/ogon

export PKG_CONFIG_PATH=/opt/ogon/lib/pkgconfig/:/opt/ogon/lib/x86_64-linux-gnu/pkgconfig/:/opt/ogon/lib64/pkgconfig

make && make install
cd ..

sudo ln -s /opt/ogon/lib/qt5/plugins/platforms/libogon.so /usr/lib/x86_64-linux-gnu/qt5/plugins/platforms/libogon.so
sudo ln -s /opt/ogon/lib64/libogon-backend.so.1 /usr/lib64/libogon-backend.so.1
