export http_proxy="http://proxy.ecmwf.int:3333"
export https_proxy="http://proxy.ecmwf.int:3333"
export ftp_proxy="http://proxy.ecmwf.int:3333"
yum -y update
yum -y install wget curl openssh-server

# Install root certificates
yum -y install ca-certificates
