if command -v git > /dev/null; then
    mkdir -p ~/.rbenv/plugins/ruby-build && git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

    eval "$(rbenv init -)" && rbenv install 2.5.1 && rbenv global 2.5.1 && gem install bundler -v 1.17.3 && echo 'eval "$(rbenv init -)"' >> ~/.bashrc
fi
