```
cat << EOF > dev-env.sh
apt-get --assume-yes install git
git clone https://github.com/pbassiner/dev-env.git .dev-env
cd .dev-env
chmod +x bootstrap.sh
./bootstrap.sh
EOF
chmod +x dev-env.sh
sudo ./dev-env.sh
```
