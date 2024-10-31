sudo dnf -y update
sudo dnf -y groupinstall 'Development Tools'
sudo dnf install -y openssl-devel libXext-devel libXcursor-devel libXinerama-devel libXext-devel libXdamage-devel libXv-devel libxkbfile-devel libxml2 \
                    libxml2-devel libXrandr-devel cmake gstreamer1-devel gstreamer1-plugins-base-devel libXi-devel protobuf-devel protobuf-compiler protobuf-c-compiler \
                    boost-devel automake.noarch ca-certificates.noarch protobuf-c-devel systemd-pam pam-devel pam-libs dbus-devel qt5-devel qt5-qtbase-devel qt5-qttools-devel \
                    qtchooser libxkbcommon-devel fontconfig-devel mtdev-devel mesa-libEGL-devel qt5-qtbase-private-devel xmlto fop.noarch libtool pixman-devel \
                    pixman-devel xorg-x11-proto-devel.noarch libXfont-devel libXfont2-devel libfontenc-devel xorg-x11-util-macros.noarch xorg-x11-font-utils xorg-x11-xtrans-devel.noarch \
                    mesa-libGL-devel xorg-x11-xkb-utils-devel binutils-devel libXcomposite-devel libXpresent-devel libXpresent libXScrnSaver libXScrnSaver-devel \
                    libXxf86misc libXxf86misc-devel

sudo mkdir /opt/ogon
sudo chown ${USER}:${USER} /opt/ogon