echo ""
echo ""
echo ==============================================================================
echo ============================ INSTALL OGON-APPS ===============================
echo ==============================================================================
echo ""

sudo dnf install -y qt5-devel.noarch qt5-qtbase-devel.x86_64 qt5-qttools-devel.x86_64

git clone https://gl.rncb.ru/cpp_developers/ResearchAndDevelopment/ogon_rncb/ogon-apps.git -b RedOS
cd ./ogon-apps
mkdir -p build && cd build
cmake -DCMAKE_PREFIX_PATH=/opt/ogon/ -DCMAKE_INSTALL_PREFIX=/opt/ogon ..
make -j $(grep -c '^processor' /proc/cpuinfo) install
cd ../..

