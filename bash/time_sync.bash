sudo apt-get install chrony -y;
sudo systemctl start chrony && sudo systemctl enable chrony;
sudo timedatectl set-timezone "Europe/Moscow";
echo "Date was succsessfully changed\nNow is $( date )";