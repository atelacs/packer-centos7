export http_proxy="http://proxy.ecmwf.int:3333"
export https_proxy="http://proxy.ecmwf.int:3333"
export ftp_proxy="http://proxy.ecmwf.int:3333"

yum -y erase gtk2 libX11 hicolor-icon-theme avahi freetype bitstream-vera-fonts
yum -y clean all
rm -rf VBoxGuestAdditions_*.iso
