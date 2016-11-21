# update kcptun to version 20161118
#https://github.com/xtaci/kcptun/releases/tag/v20161118
# kcp-3proxy
Docker include kcptun server and 3proxy


docker run -d -p 29900:29900/udp -e KEY_PWD="test12345" cool168/kcp-3proxy


client:

client_windows_amd64.exe -l :12948 -r remoteip:29900 -key test12345 -crypt salsa20 -nocomp -mtu 1400 -sndwnd 128 -rcvwnd 1024 -mode fast2 -dscp 46

proxy:

socks5 127.0.0.1:12948

