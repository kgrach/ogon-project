cd ./ogon
mkdir -p build && cd build

cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=/opt/ogon -DCMAKE_PREFIX_PATH=/opt/ogon/ -DWITH_OPENH264=on ..
make install

cd ../..
