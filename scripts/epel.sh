export http_proxy="http://proxy.ecmwf.int:3333"
export https_proxy="http://proxy.ecmwf.int:3333"
export ftp_proxy="http://proxy.ecmwf.int:3333"

# install official epel package
# @see https://fedoraproject.org/wiki/EPEL
#rpm -Uvh http://dl.fedoraproject.org/pub/epel/beta/7/x86_64/epel-release-7-0.2.noarch.rpm

#yum -y update

# install ansible
yum -y install ansible