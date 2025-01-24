echo ""
echo ""
echo ==============================================================================
echo ============================ INSTALL OGON-APPS ===============================
echo ==============================================================================
echo ""

sudo dnf install -y qt5-devel qt5-qtbase-devel qt5-qttools-devel

git clone https://github.com/kgrach/ogon-apps.git -b RedOS
cd ./ogon-apps
mkdir -p build && cd build
cmake -DCMAKE_PREFIX_PATH=/opt/ogon/ -DCMAKE_INSTALL_PREFIX=/opt/ogon ..
make -j $(grep -c '^processor' /proc/cpuinfo) install
cd ../..

