#!/bin/bash
set -e

if command -v rbenv > /dev/null; then
    eval "$(rbenv init -)"
    bundle install
fi

if command -v yarn > /dev/null; then
    yarn install
fi

if [ -d /usr/src/app/tmp/cache ]; then
  rm -rf /usr/src/app/tmp/cache
fi

if [ -e /usr/src/app/tmp/pids/*.pid ]; then
  rm /usr/src/app/tmp/pids/*.pid
fi

bundle exec rails server -b 0.0.0.0 -p 3000
