echo ""
echo ""
echo ==============================================================================
echo ========================== INSTALL LIBXFONT ==================================
echo ==============================================================================
echo ""

git clone https://github.com/kgrach/libxfont.git -b RedOS
cd libxfont/ && mkdir -p output && cd output
../autogen.sh --prefix=/opt/ogon
make && sudo make install
cd ../..

