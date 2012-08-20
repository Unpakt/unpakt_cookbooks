#!/bin/bash

set -e

mkdir -p ~/workspace
cd ~/workspace
set -- ~/workspace/pivotal_workstation \
  https://github.com/pivotal/pivotal_workstation.git \
  5ef105ca8b9d8361a631f12ace74e8619c7bc08b \
  ~/workspace/unpakt_cookbooks \
  https://github.com/Unpakt/unpakt_cookbooks.git \
  HEAD

while [[ "$@" != "" ]]; do
  if [[ -d $1 ]]; then
    pushd $1 && git fetch && git checkout $3 && popd
  else
    git clone $2 && git checkout $3
  fi
  shift 3
done

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
