echo ""
echo ""
echo ==============================================================================
echo ========================== INSTALL XSERVER ===================================
echo ==============================================================================
echo ""

git clone https://github.com/kgrach/ogon-xserver.git -b RedOS
cd ogon-xserver
export NOCONFIGURE=10 
./autogen.sh

export PKG_CONFIG_PATH=/opt/ogon/lib/pkgconfig/:/opt/ogon/share/pkgconfig:/opt/ogon/lib64/pkgconfig/:/usr/share/pkgconfig 
./configure --disable-xfree86-utils --disable-linux-acpi --disable-linux-apm --disable-xorg --disable-xvfb --disable-xquartz --disable-standalone-xpbproxy --disable-xwin --disable-glamor --disable-kdrive --disable-xephyr --disable-xfake --disable-xfbdev --disable-kdrive-kbd --disable-kdrive-mouse --disable-kdrive-evdev --with-vendor-web="http://www.ogon-project.com" --disable-xquartz --disable-xnest --disable-xorg  --prefix=/opt/ogon/ --enable-xogon --disable-xwayland --with-xkb-output=/usr/share/X11/xkb/compiled --with-xkb-path=/usr/share/X11/xkb --with-xkb-bin-directory=/usr/bin/ LDFLAGS="-Wl,-rpath=/opt/ogon/lib:/opt/ogon/lib64"

make  -j $(grep -c '^processor' /proc/cpuinfo)
cd hw/xogon/
make install
cd ../../../

