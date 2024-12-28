cd libxfont 
mkdir -p output && cd output
../autogen.sh --prefix=/opt/ogon
make && sudo make install
cd ../..