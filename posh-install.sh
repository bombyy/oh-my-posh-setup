cd ~/

sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh

mkdir ~/.poshthemes
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
chmod u+rw ~/.poshthemes/*.json
rm ~/.poshthemes/themes.zip

cp ~/oh-my-posh-setup/bubbles_nc.omp.json ~/.poshthemes/

echo 'eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/bubbles_nc.omp.json)"' >> ~/.bashrc

. ~/.bashrc