cd /workspace
sudo apt update -y
sudo apt install -y build-essential net-tools dnsutils traceroute jupyter keychain mtr software-properties-common apt-transport-https wget libsecret-1-0
# curl -fSsL https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor | sudo tee /usr/share/keyrings/microsoft-edge.gpg > /dev/null
# echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft-edge.gpg] https://packages.microsoft.com/repos/edge stable main' | sudo tee /etc/apt/sources.list.d/microsoft-edge.list
# sudo apt update -y
# sudo apt install -y microsoft-edge-stable

npm install -g yarn ijavascript
ijsinstall
npm install -g node-gyp 
cd /home/carlo/.nvm/versions/node/v18.18.2/lib/node_modules/ijavascript/node_modules/zeromq
node-gyp rebuild

sudo chown $LOGNAME:root /workspace

wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh
sudo chmod +x ./dotnet-install.sh
./dotnet-install.sh --channel STS
rm dotnet-install.sh
