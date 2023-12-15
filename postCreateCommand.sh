sudo chown $LOGNAME:root /workspace
cd /workspace
sudo apt update -y
sudo apt install -y build-essential net-tools dnsutils traceroute jupyter keychain mtr software-properties-common apt-transport-https wget libsecret-1-0

npm install -g yarn ijavascript
ijsinstall
npm install -g node-gyp 
cd /home/carlo/.nvm/versions/node/v18.18.2/lib/node_modules/ijavascript/node_modules/zeromq
node-gyp rebuild
