mkdir -p ~/.bitcoin
cp bitcoin.conf ~/.bitcoin/bitcoin.conf
dialog --msgbox "enter bitcoind user password settings and save" 10 20
nano ~/.bitcoin/bitcoin.conf
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
echo "enter SUDO bash install3.sh to continue"
exec $SHELL
