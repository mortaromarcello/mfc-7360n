#!/usr/bin/env bash
if [ $(id -u) != 0 ]; then
  echo "$USER deve essere root"
  exit
fi
apt-get install libc6-i386
cp -va usr/* /usr/
cp -va var/* /var/
/usr/local/Brother/Printer/MFC7360N/cupswrapper/cupswrapperMFC7360N-2.0.4 -i
service cups restart
