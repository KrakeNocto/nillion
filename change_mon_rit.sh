read -p "Enter moniker: " MONIKER

sed -i 's/moniker = "Ubuntu-2204-jammy-amd64-base"/moniker = "'"$MONIKER"'" /' /home/ritual/.nillionapp/config/config.toml

echo $MONIKER

rm change_mon_rit.sh

systemctl restart nilliond && journalctl -fu nilliond
