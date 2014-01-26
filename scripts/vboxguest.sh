#!/bin/bash

mkdir -p /tmp/virtualbox
VERSION=`cat /home/vagrant/.vbox_version 2>/dev/null`
mount -o loop /home/vagrant/VBoxGuestAdditions_$VERSION.iso /tmp/virtualbox
sh /tmp/virtualbox/VBoxLinuxAdditions.run
umount -f /tmp/virtualbox
rmdir /tmp/virtualbox
rm -f /home/vagrant/*.iso
