#!/bin/bash

cd $(HOME)
git clone https://github.com/metalefty/Ricty.git
cd Ricty

brew install fontforge
wget http://levien.com/type/myfonts/Inconsolata.otf
w3m http://mix-mplus-ipa.sourceforge.jp/download.html

wget https://osdn.jp/projects/mix-mplus-ipa/downloads/63545/migu-1p-20150712.zip/
unzip migu-1p-20150712.zip
mv migu-1p-20150712/migu-1m-bold.ttf ./
mv migu-1p-20150712/migu-1m-regular.ttf ./

chmod 777 ./ricty_generator.sh
./ricty_generator.sh Inconsolata.otf migu-1m-regular.ttf migu-1m-bold.ttf

cp -f Ricty*.ttf ~/Library/fonts

