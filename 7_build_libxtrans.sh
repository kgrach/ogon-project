echo ""
echo ""
echo ==============================================================================
echo ========================== INSTALL LIBXTRANS =================================
echo ==============================================================================
echo ""

sudo dnf install -y xmlto.x86_64 fop.noarch libtool.x86_64 pixman-devel.x86_64 pixman-devel.x86_64 xorg-x11-proto-devel.noarchs ust-x11rb-protocol+composite-devel.noarch \
       		 libXfont-devel.x86_64 libXfont2-devel.x86_64 libfontenc-devel.x86_64 xorg-x11-util-macros.noarch xorg-x11-font-utils.x86_64 xorg-x11-xtrans-devel.noarch \ 
		 mesa-libGL-devel.x86_64 xorg-x11-xkb-utils-devel.x86_64 binutils-devel.x86_64 libXcomposite-devel.x86_64 libXpresent-devel.x86_64 libXpresent.x86_64 \ 
		 libXScrnSaver.x86_64 libXScrnSaver-devel.x86_64 libXxf86misc.x86_64 libXxf86misc-devel.x86_64


git clone https://github.com/kgrach/libxtrans.git -b RedOS
cd libxtrans && mkdir -p output && cd output
../autogen.sh --prefix=/opt/ogon
make && sudo make install
cd ../..
