#!/bin/bash

apt-get update
export DEBIAN_FRONTEND=noninteractive

apt-get -yq install git curl python build-essential libssl-dev git-core vim wget


curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.0/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  

nvm install 0.6.8
apt-get -yq install npm 
nvm install 10.23.0
	
npm install underscore@1.3 log@1.3.1 bison@1.1.1 websocket@1.0.8 sanitizer@0.1.0-alpha memcache@0.3.0 @gitterhq/websocket-server

mv node_modules/@gitterhq/websocket-server node_modules/websocket-server
rm -r node_modules/@gitterhq

git clone https://github.com/mozilla/BrowserQuest.git

cd BrowserQuest
mv server/config_local.json-dist server/config_local.json

cd client
npm install --global http-server@0.12.3



nvm use 0.6.8

node server/js/main.js 

cd /
http-server -p 80 ./BrowserQuest/client