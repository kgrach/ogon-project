echo ""
echo ""
echo ==============================================================================
echo =========================== INSTALL PLATFORM-QT ==============================
echo ==============================================================================
echo ""

sudo dnf install qtchooser.x86_64 libxkbcommon-devel.x86_64 fontconfig-devel.x86_64 mtdev-devel.x86_64 mesa-libEGL-devel.x86_64 qt5-qtbase-private-devel.x86_64

git clone https://gl.rncb.ru/cpp_developers/ResearchAndDevelopment/ogon_rncb/ogon-platform-qt.git -b RedOS
cd ./ogon-platform-qt 

/usr/lib/qtchooser/qtchooser -run-tool=qmake ADDITIONAL_RPATHS=/opt/ogon/lib/:/opt/ogon/lib/x86_64-linux-gnu/pkgconfig/:/opt/ogon/lib64/ PREFIX=/opt/ogon

export PKG_CONFIG_PATH=/opt/ogon/lib/pkgconfig/:/opt/ogon/lib/x86_64-linux-gnu/pkgconfig/:/opt/ogon/lib64/pkgconfig

make && make install
cd ../

sudo ln -s /opt/ogon/lib/qt5/plugins/platforms/libogon.so /usr/lib/x86_64-linux-gnu/qt5/plugins/platforms/libogon.so
sudo ln -s /opt/ogon/lib64/libogon-backend.so.1 /usr/lib64/libogon-backend.so.1

