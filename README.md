```
cat << EOF > dev-env.sh
sudo apt-get update
sudo apt-get --assume-yes install git
git clone https://github.com/pbassiner/dev-env.git .dev-env
cd .dev-env
chmod +x bootstrap.sh
sudo ./bootstrap.sh
EOF
chmod +x dev-env.sh
./dev-env.sh
```
