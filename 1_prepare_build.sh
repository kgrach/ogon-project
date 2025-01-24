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
                    
sudo dnf install -y xmlto fop libtool pixman-devel pixman-devel xorg-x11-proto-devel libXfont-devel libXfont2-devel libfontenc-devel xorg-x11-util-macros \
                    xorg-x11-font-utils xorg-x11-xtrans-devel xorg-x11-xkb-utils-devel binutils-devel libXcomposite-devel libXpresent-devel \
                    libXpresent libXScrnSaver libXScrnSaver-devel libXxf86misc libXxf86misc-devel fuse-devel libSM-devel libXtst-devel intltool libtool-ltdl-devel \
                    libcap-devel libSM-devel cjson-devel json-c-devel libsndfile-devel thrift thrift-devel

# Эти пакеты отсутствуют в репозитории redos7
#pam-libs qtchooser

sudo mkdir -p /opt/ogon/lib
sudo chown ${USER}:${USER} -R /opt/ogon
