#!/usr/bin/env bash

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
