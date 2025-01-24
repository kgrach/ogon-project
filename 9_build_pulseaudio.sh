echo ""
echo ""
echo ==============================================================================
echo ====================== INSTALL AUDIO with PULSAUDIO ==========================
echo ==============================================================================
echo ""

sudo dnf install -y libSM-devel libXtst-devel intltool libtool-ltdl-devel libcap-devel libSM-devel cjson-devel json-c-devel libsndfile-devel

git clone https://github.com/kgrach/ogon-pulseaudio.git -b RedOS
cd ./ogon-pulseaudio

export GIT_DESCRIBE_FOR_BUILD=2.25.1
export NOCONFIGURE=YES 
./bootstrap.sh
export PKG_CONFIG_PATH=/opt/ogon/lib/pkgconfig/:/opt/ogon/share/pkgconfig:/opt/ogon/lib64/pkgconfig/:/usr/share/pkgconfig 
./configure -disable-oss-output --enable-oss-wrapper --disable-alsa --disable-jack --disable-xen --disable-tests --disable-udev --enable-ogon --prefix=/opt/ogon --disable-glib2 --disable-avahi --disable-ipv6 --disable-openssl --enable-x11 --disable-systemd-journal --disable-systemd-daemon LDFLAGS="-Wl,-rpath=/opt/ogon/lib:/opt/ogon/lib64/"
sudo make -j $(grep -c '^processor' /proc/cpuinfo) install
cd ..

