sudo apt-get update
sudo apt-get upgrade -y
#wget https://gist.githubusercontent.com/scatterp/75ec3cc3ce47be79a291f266969e2383/raw/3f30657e2548b863891c76237c21803a9f38ac7b/install2.sh
#wget https://gist.githubusercontent.com/scatterp/14b7a5eb8a88913349c44ab8cb155637/raw/53a246ecf8b759c3b07ad74e35a501e4bfe63e3e/install3.sh
wget https://gist.githubusercontent.com/scatterp2/3f6b1ae1965de18057a896bedc9a6132/raw/cb230dc8b9cc5dab6da64f7e34cf5e50ae373092/passenger.conf
wget https://gist.githubusercontent.com/scatterp2/5aab2adb578020f93d0f2146e0aac61b/raw/2b2e5fc7e8a95eea3d4b791217c5d1e5b848cd43/bitcoin.conf
#read -p "Press [Enter] key to continue..."
sudo apt-get remove -y apache2
#read -p "Press [Enter] key to continue..."
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev imagemagick gsfonts nodejs nginx-extras redis-server software-properties-common python-software-properties nano dialog vim
sudo add-apt-repository -y ppa:bitcoin/bitcoin
sudo apt-get update
sudo apt-get install -y bitcoind
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
echo "enter bash install2.sh to continue"
exec $SHELL
