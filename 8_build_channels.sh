echo ""
echo ""
echo ==============================================================================
echo ========================== INSTALL OGON-CHANNELS =============================
echo ==============================================================================
echo ""

sudo dnf install -y fuse-devel.x86_64

git clone https://gl.rncb.ru/cpp_developers/ResearchAndDevelopment/ogon_rncb/ogon-channels.git -b RedOS
cd ./ogon-channels
mkdir -p build && cd build
cmake -DCMAKE_PREFIX_PATH=/opt/ogon -DCMAKE_INSTALL_PREFIX=/opt/ogon ..
make -j $(grep -c '^processor' /proc/cpuinfo) install
cd ../../

