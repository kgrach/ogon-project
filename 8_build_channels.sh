echo ""
echo ""
echo ==============================================================================
echo ========================== INSTALL OGON-CHANNELS =============================
echo ==============================================================================
echo ""

sudo dnf install -y fuse-devel pcsc-lite-devel

git clone https://github.com/kgrach/ogon-channels.git -b RedOS8
cd ./ogon-channels
mkdir -p build && cd build
cmake -DCMAKE_PREFIX_PATH=/opt/ogon -DCMAKE_INSTALL_PREFIX=/opt/ogon ..
sudo make -j $(grep -c '^processor' /proc/cpuinfo) install
cd ../../

