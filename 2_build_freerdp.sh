echo ""
echo ""
echo ==============================================================================
echo ============================ INSTALL FREERDP =================================
echo ==============================================================================
echo ""

sudo dnf install -y openssl-devel libXext-devel libXcursor-devel libXinerama-devel  \
                    libXdamage-devel libXv-devel libxkbfile-devel libxml2 libxml2-devel \
                    libXrandr-devel cmake gstreamer1-devel gstreamer1-plugins-base-devel libXi-devel

git clone https://github.com/kgrach/ogon-freerdp2.git -b RedOS
cd ./ogon-freerdp2
mkdir -p build && cd build
cmake -DCMAKE_BUILD_TYPE=Debug -DWITH_SERVER=ON -DCMAKE_INSTALL_PREFIX=/opt/ogon -DCMAKE_PREFIX_PATH=/opt/ogon/ -DWITH_GSTREAMER_1_0=ON  ..
make -j $(grep -c '^processor' /proc/cpuinfo) install
cd ../..
