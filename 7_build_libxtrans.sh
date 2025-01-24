echo ""
echo ""
echo ==============================================================================
echo ========================== INSTALL LIBXTRANS =================================
echo ==============================================================================
echo ""
#ust-x11rb-protocol-composite-devel
sudo dnf install -y xmlto fop libtool pixman-devel pixman-devel xorg-x11-proto-devel  \
       		 		libXfont-devel libXfont2-devel libfontenc-devel xorg-x11-util-macros xorg-x11-font-utils xorg-x11-xtrans-devel \ 
		 			mesa-libGL-devel xorg-x11-xkb-utils-devel binutils-devel libXcomposite-devel libXpresent-devel libXpresent \ 
		 			libXScrnSaver libXScrnSaver-devel libXxf86misc libXxf86misc-devel


git clone https://github.com/kgrach/libxtrans.git -b RedOS
cd libxtrans && mkdir -p output && cd output
../autogen.sh --prefix=/opt/ogon
make && sudo make install
cd ../..
