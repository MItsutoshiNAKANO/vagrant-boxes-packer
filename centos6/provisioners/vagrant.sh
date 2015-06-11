mkdir -pm 700 /home/vagrant/.ssh
curl -L https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub -o /home/vagrant/.ssh/authorized_keys
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh
sed -i "s/^Defaults\s*requiretty/#Defaults requiretty\nDefaults:vagrant !requiretty/" /etc/sudoers