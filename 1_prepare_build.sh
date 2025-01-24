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
                     
                    
sudo dnf install -y libXScrnSaver libXScrnSaver-devel libXxf86misc libXxf86misc-devel fuse-devel libSM-devel libXtst-devel intltool libtool-ltdl-devel \
                    libcap-devel libSM-devel cjson-devel json-c-devel libsndfile-devel thrift thrift-devel

# Эти пакеты отсутствуют в репозитории redos7
#pam-libs qtchooser

sudo mkdir -p /opt/ogon/lib
sudo chown ${USER}:${USER} -R /opt/ogon
