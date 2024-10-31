git clone https://gitlab.freedesktop.org/xorg/lib/libxfont.git --branch libXfont-1.5-branch
cd libxfont/ && mkdir -p output && cd output
../autogen.sh --prefix=/opt/ogon
make && sudo make install
cd ../..