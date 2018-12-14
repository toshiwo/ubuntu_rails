if command -v curl > /dev/null; then
    curl -L git.io/nodebrew | perl - setup
    echo "export PATH=\$HOME/.nodebrew/current/bin:\$PATH" >> ~/.bashrc

    nodebrew install-binary v11.4.0
    nodebrew use v11.4.0
    npm i -g yarn
    echo "nodebrew use v11.4.0 > /dev/null 2>&1" >> ~/.bashrc
fi
