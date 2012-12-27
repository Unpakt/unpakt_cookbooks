#!/bin/bash

set -e

cd
if [[ -d ~/workspace ]]; then
  mv ~/workspace ~/workspace.bak
fi

mkdir -p ~/workspace
cd ~/workspace

git clone https://github.com/pivotal/pivotal_workstation.git
git clone https://github.com/Unpakt/unpakt_cookbooks.git

mv ~/workspace.bak/unpakt ~/workspace/unpakt

if [[ ! -f ~/soloistrc ]]; then
  cat > ~/soloistrc <<EOF
cookbook_paths:
- /Users/$USER/workspace
- /Users/$USER/workspace/unpakt_cookbooks
recipes:
- unpakt_workstation::meta_unpakt_lion_image
EOF
fi

if rvm --version 2>/dev/null; then
  gem install soloist
else
  sudo gem install soloist
fi
soloist
