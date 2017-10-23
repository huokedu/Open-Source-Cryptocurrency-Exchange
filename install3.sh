echo 'deb http://www.rabbitmq.com/debian/ testing main' | sudo tee /etc/apt/sources.list.d/rabbitmq.list
wget -O- https://www.rabbitmq.com/rabbitmq-release-signing-key.asc |sudo apt-key add -
sudo apt-get update
sudo apt-get install -y rabbitmq-server
sudo rabbitmq-plugins enable rabbitmq_management
sudo service rabbitmq-server restart
wget http://localhost:15672/cli/rabbitmqadmin
chmod +x rabbitmqadmin
sudo mv rabbitmqadmin /usr/local/sbin
sudo add-apt-repository 'deb http://archive.ubuntu.com/ubuntu trusty universe'
sudo apt-get update
sudo apt-get install -y mysql-server-5.6 redis-server libmysqlclient-dev
sudo apt-get install -y dirmngr gnupg
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 561F9B9CAC40B2F7
sudo apt-get install -y apt-transport-https ca-certificates

# Add our APT repository
sudo sh -c 'echo deb https://oss-binaries.phusionpassenger.com/apt/passenger xenial main > /etc/apt/sources.list.d/passenger.list'
sudo apt-get update

# Install Passenger + Nginx
sudo apt-get install -y --allow-unauthenticated nginx-extras passenger
echo "checking for rbenv"
rbenv
read -p "Press [Enter] key to continue..."
rbenv install 2.2.2
echo "installed ruby 2.2.7 continuing"
#sudo apt-get install -y default-jre 
#rbenv install jruby-9.1.13.0
rbenv global 2.2.2
echo "set as global"
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
gem install bundler
rbenv rehash
bitcoind
sudo cp passenger.conf /etc/nginx/passenger.conf
sudo echo "include  /etc/nginx/passenger.conf;" >> /etc/nginx/nginx.conf
echo "remaining steps 10"
echo "export RAILS_ENV=production" >> ~/.bashrc
source ~/.bashrc
mkdir -p ~/peatio
#git clone https://github.com/ctubio/Krypto-trading-bot.git ~/K
git clone https://github.com/scatterp/peatio.git ~/peatio/current
#git checkout testing01
cd ~/peatio/current/
pwd
read -p "Press [Enter] key to continue..."
sudo apt-get install -y ruby-bundler
bundle install --without development test --path vendor/bundle
bin/init_config
dialog --msgbox "enter pusher <US1> settings and save" 10 20
sudo nano ~/peatio/current/config/application.yml
dialog --msgbox "enter database password  in settings and save" 10 20
sudo nano ~/peatio/current/config/database.yml
dialog --msgbox "enter bitcoind user password settings and :q to save" 10 20
sudo nano ~/peatio/current/config/currencies.yml
cd ~/peatio/current/
sudo /etc/init.d/mysql stop
sudo /etc/init.d/mysql start
bundle exec rake db:setup
bundle exec rake assets:precompile
pwd
#cd /home/deploy/K/
#pwd
#make install
#cd ..
#git clone https://github.com/scatterp3/peatio.git ~/jpeatio/current
#cd ~/jpeatio/current
#rbenv global jruby-9.1.13.0
#gem install bundler
#bundle install
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update
sudo apt-get install python-certbot-nginx
echo "you can now setup ssl and run daemons"
