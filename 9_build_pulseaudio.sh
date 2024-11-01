echo ""
echo ""
echo ==============================================================================
echo ====================== INSTALL AUDIO with PULSAUDIO ==========================
echo ==============================================================================
echo ""

sudo dnf install -y libSM-devel.x86_64 libXtst-devel.x86_64 intltool.noarch libtool-ltdl-devel.x86_64 libcap-devel.x86_64 libSM-devel.x86_64 cjson-devel.x86_64 \ 
	         json-c-devel.x86_64 libsndfile-devel.x86_64

git clone https://gl.rncb.ru/cpp_developers/ResearchAndDevelopment/ogon_rncb/pulseaudio-ogon.git -b RedOS
cd ./pulseaudio-ogon
NOCONFIGURE=YES ./bootstrap.sh
PKG_CONFIG_PATH=/opt/ogon/lib/pkgconfig/:/opt/ogon/share/pkgconfig:/opt/ogon/lib/x86_64-linux-gnu/pkgconfig/ ./configure -disable-oss-output --enable-oss-wrapper --disable-alsa --disable-jack --disable-xen --disable-tests --disable-udev --enable-ogon --prefix=/opt/ogon --disable-glib2 --disable-avahi --disable-ipv6 --disable-openssl --enable-x11 --disable-systemd-journal --disable-systemd-daemon LDFLAGS="-Wl,-rpath=/opt/ogon/lib:/opt/ogon/lib/x86_64-linux-gnu/"
make -j $(grep -c '^processor' /proc/cpuinfo) install
cd ..

