#!/bin/bash -xe

# Install node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install --lts
node -e "console.log('Running Node.js ' + process.version)"
npm -v

# Install npm deps
npm install -g forever
npm install -g verdaccio

# Create log directory
sudo mkdir /var/log/verdaccio

# Run verdaccio server in background via forever
forever start `which verdaccio` --listen 0.0.0.0:80

# Survive reboot via crontab
line="@reboot /usr/bin/forever start `which verdaccio` --listen 0.0.0.0:80"
(crontab -u $(whoami) -l; echo "$line" ) | crontab -u $(whoami) -