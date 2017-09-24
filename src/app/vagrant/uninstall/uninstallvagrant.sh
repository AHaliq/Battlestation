#!/bin/bash

function osxuninstallvagrant ()
{
  sudo rm -rf /usr/local/bin/vagrant
  sudo rm -rf /opt/vagrant/
  sudo pkgutil --forget com.vagrant.vagrant
}
ifexist vagrant osxuninstallvagrant
