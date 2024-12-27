cd ./ogon-freerdp2

cmake -DCMAKE_BUILD_TYPE=Debug -DWITH_SERVER=ON -DCMAKE_INSTALL_PREFIX=/opt/ogon -DCMAKE_PREFIX_PATH=/opt/ogon/ -DWITH_GSTREAMER_1_0=ON  .
make -j $(grep -c '^processor' /proc/cpuinfo) install

cd ..