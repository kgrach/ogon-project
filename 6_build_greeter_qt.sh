echo ""
echo ""
echo ==============================================================================
echo ============================ INSTALL QT-GREETER ==============================
echo ==============================================================================
echo ""


git clone https://github.com/kgrach/ogon-greeter-qt.git -b RedOS
cd ./ogon-greeter-qt
mkdir -p build && cd build
cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=/opt/ogon -DCMAKE_PREFIX_PATH=/opt/ogon/ ..
make -j $(grep -c '^processor' /proc/cpuinfo) install
cd ../..

