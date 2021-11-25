# Ubuntu-starter

Deploy and Configure Ubuntu-Server

## Table of Contents

- [Table of Contents](#table-of-contents)
  - [Basic Packets](#basic-packets)
  - [Install and configure SSH](#install-ssh)
  - [Install zsh](#install-zsh)
  - [Time sync](#time-sync-packet)
  - [C++ compiler and make](#cpp-compiler-gcc)
  - [Build TelegramAPIServer](#build-api-telegram-server)
  - [Install Elastic Search](#install-elastic-search)

<a id="basic-packets"></a>
Basic Packets

```sh
sudo apt-get update && sudo apt-get upgrade -y &&
sudo apt-get install tree curl wget nmap git python3 python sed vim nano net-tools -y;
```

<a id="install-ssh"></a>
Install and configure SSH

```sh
sudo apt-get install openssh-server ssh;
```

<a id="install-zsh"></a>
Install zsh

```sh
sudo apt-get install zsh -y && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && \
sed -i 's/ZSH_THEME=.*/ZSH_THEME="flazz"/' ~/.zshrc;
```

<a id="time-sync-packet"></a>
Time sync

```sh
sudo apt-get install chrony -y;
sudo systemctl start chrony && sudo systemctl enable chrony;
sudo timedatectl set-timezone "Europe/Moscow";
echo "Date was succsessfully changed\nNow is $( date )";
```

<a id="cpp-compiler-gcc"></a>
C++ compiler and make

```sh
sudo apt-get install make git zlib1g-dev libssl-dev gperf cmake g++ build-essential;
```

<a id="build-api-telegram-server"></a>
Build TelegramAPIServer

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

<a id="install-elastic-search"></a>
Install Elastic Search

```sh
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add - && \
sudo apt-get install apt-transport-https && \
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee /etc/apt/sources.list.d/elastic-7.x.list && \
sudo apt-get update && sudo apt-get install elasticsearch -y;
sudo /bin/systemctl daemon-reload && \
sudo /bin/systemctl enable elasticsearch.service && \
sudo systemctl restart elasticsearch.service && \
sudo systemctl status elasticsearch.service
```

Add 0.0.0.0 listen to elasticsearch

```sh
echo -e "discovery.seed_hosts: [\"127.0.0.1\", \"[::1]\"]\nnetwork.host: 0.0.0.0" \
>> /etc/elasticsearch/elasticsearch.yml && sudo systemctl restart elasticsearch
```
