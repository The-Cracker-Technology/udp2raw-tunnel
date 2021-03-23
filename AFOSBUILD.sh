if [[ $(uname -m) == *"x86_64"* ]]; then
  make amd64 mingw_cross arm
  rm -rf /opt/ANDRAX/udp2raw
  mkdir /opt/ANDRAX/udp2raw
  cp -Rf udp2raw_* /opt/ANDRAX/udp2raw
  rm -rf /opt/ANDRAX/bin/udp2raw
  cp -Rf udp2raw_amd64 /opt/ANDRAX/bin/udp2raw
else
  make mingw_cross arm
  rm -rf /opt/ANDRAX/udp2raw
  mkdir /opt/ANDRAX/udp2raw
  cp -Rf udp2raw_* /opt/ANDRAX/udp2raw
  cp -Rf afosfiles/udp2raw_amd64 /opt/ANDRAX/udp2raw
  rm -rf /opt/ANDRAX/bin/udp2raw
  cp -Rf udp2raw_arm /opt/ANDRAX/bin/udp2raw
fi
