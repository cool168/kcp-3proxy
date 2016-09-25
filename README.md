# update kcptun to version 20160906
#https://github.com/xtaci/kcptun/releases/tag/v20160922
# kcp-3proxy
Docker include kcptun server and 3proxy


docker run -t -p 29900:29900/udp cool168/kcp-3proxy


client:

client_windows_amd64.exe -l :12948 -r remoteip:29900 -key test -mtu 1400 -sndwnd 128 -rcvwnd 1024 -mode fast2 -dscp 46

proxy:

http 127.0.0.1:12948

