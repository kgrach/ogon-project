echo ""
echo ""
echo ==============================================================================
echo ========================== INSTALL LIBXFONT ==================================
echo ==============================================================================
echo ""

git clone https://gl.rncb.ru/cpp_developers/ResearchAndDevelopment/ogon_rncb/libxfont.git -b RedOS
cd libxfont/ && mkdir -p output && cd output
../autogen.sh --prefix=/opt/ogon
make && sudo make install
cd ../..

