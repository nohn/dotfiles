#!/usr/bin/env bash

# Fix DNS
sudo sed -r -i.orig 's/#?DNSStubListener=yes/DNSStubListener=no/g' /etc/systemd/resolved.conf
sudo sh -c 'rm /etc/resolv.conf && ln -s /run/systemd/resolve/resolv.conf /etc/resolv.conf'
sudo systemctl restart systemd-resolved
# (Un)fix secondary screen in multi-head setups
gsettings set org.gnome.shell.overrides workspaces-only-on-primary false
# Get rid of Evolution as much as possible
cd /usr/share/dbus-1/services
sudo cp org.gnome.evolution.dataserver.AddressBook.service org.gnome.evolution.dataserver.AddressBook.service.backup
sudo cp org.gnome.evolution.dataserver.Calendar.service org.gnome.evolution.dataserver.Calendar.service.backup
sudo cp org.gnome.evolution.dataserver.Sources.service org.gnome.evolution.dataserver.Sources.service.backup
sudo cp org.gnome.evolution.dataserver.UserPrompter.service org.gnome.evolution.dataserver.UserPrompter.service.backup
sudo ln -snf /dev/null org.gnome.evolution.dataserver.AddressBook.service
sudo ln -snf /dev/null org.gnome.evolution.dataserver.Calendar.service
sudo ln -snf /dev/null org.gnome.evolution.dataserver.Sources.service
sudo ln -snf /dev/null org.gnome.evolution.dataserver.UserPrompter.service
