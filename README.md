# Ubuntu-starter

Deploy and Configure Ubuntu-Server

Basic Packets

```sh
sudo apt-get update && sudo apt-get upgrade -y &&
sudo apt-get install tree curl wget nmap git python3 python sed vim nano net-tools -y;
```

Install and configure SSH

```sh
sudo apt-get install openssh-server ssh;
```

Install zsh

```sh
sudo apt-get install zsh -y && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && sed -i 's/ZSH_THEME=.*/ZSH_THEME="flazz"/' ~/.zshrc;
```

Time sync

```sh
sudo apt-get install chrony -y;
sudo systemctl start chrony && sudo systemctl enable chrony;
sudo timedatectl set-timezone "Europe/Moscow";
echo "Date was succsessfully changed\nNow is $( date )";
```

C++ compile

```sh
sudo apt-get install make git zlib1g-dev libssl-dev gperf cmake g++ build-essential;
```

Install TelegramAPIServer

```sh
sudo apt-get update && sudo apt-get upgrade -y &&
sudo apt-get install make git zlib1g-dev libssl-dev gperf cmake g++ -y &&
git clone --recursive https://github.com/tdlib/telegram-bot-api.git &&
cd telegram-bot-api &&
rm -rf build &&
mkdir build &&
cd build &&
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX:PATH=.. .. &&
cmake --build . --target install &&
cd ../.. &&
ls -l telegram-bot-api/bin/telegram-bot-api*
```
