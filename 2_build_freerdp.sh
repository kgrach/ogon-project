echo ""
echo ""
echo ==============================================================================
echo ============================ INSTALL FREERDP =================================
echo ==============================================================================
echo ""

sudo dnf install -y openssl-devel.x86_64 libXext-devel.x86_64 libXcursor-devel.x86_64 libXinerama-devel.x86_64 libXext-devel.x86_64 libXdamage-devel.x86_64 libXv-devel.x86_64 libxkbfile-devel.x86_64 libxml2.x86_64 libxml2-devel.x86_64 libXrandr-devel.x86_64 cmake.x86_64 gstreamer1-devel.x86_64 gstreamer1-plugins-base-devel.x86_64 libXi-devel.x86_64

git clone https://gl.rncb.ru/cpp_developers/ResearchAndDevelopment/ogon_rncb/freerdp-ogon.git -b RedOS
cd ./freerdp-ogon
mkdir -p build && cd build
cmake -DCMAKE_BUILD_TYPE=Debug -DWITH_SERVER=ON -DCMAKE_INSTALL_PREFIX=/opt/ogon -DCMAKE_PREFIX_PATH=/opt/ogon/ -DWITH_GSTREAMER_1_0=ON  ..
make -j $(grep -c '^processor' /proc/cpuinfo) install
cd ../..
