#!/bin/bash

mkdir -p /home/vagrant/.ssh
curl -s -o authorized_keys https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub
mv -f authorized_keys /home/vagrant/.ssh
chown -f vagrant /home/vagrant
chown -Rf vagrant /home/vagrant/.ssh
chmod -Rf go-rwsx /home/vagrant/.ssh
