echo ""
echo ""
echo ==============================================================================
echo =========================== INSTALL PLATFORM-QT ==============================
echo ==============================================================================
echo ""

echo ""
echo ""
echo ==============================================================================
echo ====================== ЕСЛИ НЕ УСТАНОВИТСЯ ЧИТАЙ TODO ========================
echo ==============================================================================
echo ""

# Эти пакеты отсутствуют в репозитории redos7
#qtchooser

sudo dnf install -y libxkbcommon-devel fontconfig-devel mtdev-devel mesa-libEGL-devel qt5-qtbase-private-devel

git clone https://github.com/kgrach/ogon-platform-qt.git -b RedOS
cd ./ogon-platform-qt 

#echo ===== PLEASE CHOOSE qt5 defaut
#sudo alternatives --config qtchooser-default

#export CPATH=$CPATH:/usr/include/qt5/QtGui/5.15.14/QtGui/:/usr/include/qt5/

#/usr/lib/qtchooser/qtchooser -run-tool=qmake ADDITIONAL_RPATHS=/opt/ogon/lib/:/opt/ogon/lib/pkgconfig/:/opt/ogon/lib64/pkgconfig/:/opt/ogon/lib64/:/usr/include/qt5/ PREFIX=/opt/ogon

export PKG_CONFIG_PATH=/opt/ogon/lib/pkgconfig/:/opt/ogon/lib64/pkgconfig

/usr/bin/qmake-qt5 && make && make install
cd ../


sudo ln -s /opt/ogon/lib/qt5/plugins/platforms/libogon.so /usr/lib/x86_64-linux-gnu/qt5/plugins/platforms/libogon.so
sudo ln -s /opt/ogon/lib64/libogon-backend.so.1 /usr/lib64/libogon-backend.so.1

