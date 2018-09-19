# Packer Image Builder for Centos 7

## Introduction

The focus is to:

* build production ready images

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

### CentOS 7

CentOS 7 is the next major release with [great new features](http://wiki.centos.org/Manuals/ReleaseNotes/CentOS7).

```bash
# start the installation
packer build centos7.json

# upload the image to open stack
glance image-create --name "CentOS 7.5" --disk-format qcow2 --file output-centos-7-cloud-kvm/packer-centos-7-cloud-kvm --container-format bare
```