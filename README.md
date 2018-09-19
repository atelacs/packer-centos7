# Packer Image Builder for RHEL Family 7

## Introduction

This repository started as a need to use RedHat, CentOS.To reduce the risk of malicious software on boxes, we open source the build process to ensure the process is open and everybody can find and fix potential bugs. The focus is to:

* build production ready images
* reduce the image to the minimal required set
* do not expect any specific environment (for patch management etc)

This repository can be used to build 

* KVM images (e.g. for Open Stack)

## Requirements

The templates are only tested with [packer](http://www.packer.io/downloads.html) 0.5.2 and later.

## Build cloud images for OpenStack

The Cloud Images are build on the following guidelines:

* Minimal Setup (installs only required base packages)
* Use XFS as default file system instead of LVM
* Configuration for network devices
* Optimized for usage with CloudInit
* No surprises

### CentOS 7

CentOS 7 is the next major release with [great new features](http://wiki.centos.org/Manuals/ReleaseNotes/CentOS7).

```bash
# start the installation
packer build centos7.json

# upload the image to open stack
glance image-create --name "CentOS 7.5" --disk-format qcow2 --file output-centos-7-cloud-kvm/packer-centos-7-cloud-kvm --container-format bare
```