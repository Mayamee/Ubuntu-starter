# Ubuntu-starter

Deploy and Configure Ubuntu-Server

Bundle

```sh
sudo apt-get update && sudo apt-get upgrade -y;
sudo apt-get install tree curl wget nmap git python3 python sed vim nano;
sudo apt-get install openssh-server ssh;
sudo apt-get install zsh -y && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
sed -i 's/ZSH_THEME=.*/ZSH_THEME="flazz"/' ~/.zshrc;
sudo apt-get install chrony -y;
sudo systemctl start chrony && sudo systemctl enable chrony;
sudo timedatectl set-timezone "Europe/Moscow";
echo "Date was succsessfully changed\nNow is $( date )";
```

Basic Packets

```sh
sudo apt-get update && sudo apt-get upgrade -y;
sudo apt-get install tree curl wget nmap git python3 python sed vim nano;
```

Install and configure SSH

```sh
sudo apt-get install openssh-server ssh;
```

Install zsh

```sh
sudo apt-get install zsh -y && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
sed -i 's/ZSH_THEME=.*/ZSH_THEME="flazz"/' ~/.zshrc;
```

Time sync

```sh
sudo apt-get install chrony -y;
sudo systemctl start chrony && sudo systemctl enable chrony;
sudo timedatectl set-timezone "Europe/Moscow";
echo "Date was succsessfully changed\nNow is $( date )";
```
