echo ==============================================================================
echo =============================== DNF UPDATE ===================================
echo ==============================================================================

sudo dnf -y update

echo ""
echo ""
echo ==============================================================================
echo ======================== DNF INSTALL DEPEDENCIES =============================
echo ==============================================================================
echo ""

sudo dnf -y groupinstall 'Development Tools'

sudo dnf install -y openssl-devel.x86_64 libXext-devel.x86_64 libXcursor-devel.x86_64 libXinerama-devel.x86_64 libXext-devel.x86_64 libXdamage-devel.x86_64 libXv-devel.x86_64 libxkbfile-devel.x86_64 libxml2.x86_64 libxml2-devel.x86_64 libXrandr-devel.x86_64 cmake.x86_64 gstreamer1-devel.x86_64 gstreamer1-plugins-base-devel.x86_64 libXi-devel.x86_64 protobuf-devel.x86_64 protobuf-compiler.x86_64 protobuf-c-compiler.x86_64 boost-devel.x86_64 automake.noarch ca-certificates.noarch protobuf-c-devel.x86_64 systemd-pam.x86_64 pam-devel.x86_64 pam-libs.x86_64 dbus-devel.x86_64 qt5-devel.noarch qt5-qtbase-devel.x86_64 qt5-qttools-devel.x86_64 qtchooser.x86_64 libxkbcommon-devel.x86_64 fontconfig-devel.x86_64 mtdev-devel.x86_64 mesa-libEGL-devel.x86_64 qt5-qtbase-private-devel.x86_64 xmlto.x86_64 fop.noarch libtool.x86_64 pixman-devel.x86_64 pixman-devel.x86_64 xorg-x11-proto-devel.noarch libXfont-devel.x86_64 libXfont2-devel.x86_64 libfontenc-devel.x86_64 xorg-x11-util-macros.noarch xorg-x11-font-utils.x86_64 xorg-x11-xtrans-devel.noarch mesa-libGL-devel.x86_64 xorg-x11-xkb-utils-devel.x86_64 binutils-devel.x86_64 libXcomposite-devel.x86_64 libXpresent-devel.x86_64 libXpresent.x86_64 libXScrnSaver.x86_64 libXScrnSaver-devel.x86_64 libXxf86misc.x86_64 libXxf86misc-devel.x86_64 fuse-devel.x86_64 libSM-devel.x86_64 libXtst-devel.x86_64 intltool.noarch libtool-ltdl-devel.x86_64 libcap-devel.x86_64 libSM-devel.x86_64 cjson-devel.x86_64 json-c-devel.x86_64 libsndfile-devel.x86_64


sudo mkdir -p /opt/ogon/lib
sudo chown ${USER}:${USER} -R /opt/ogon
