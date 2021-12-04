#!/bin/bash

scripts_to_exec=$(find $(pwd)/packets -name "install_*.sh" | awk -F" " '{print $(NF)}')
if [[ -z $scripts_to_exec ]]; then
	echo "Не найдены объекты для обработки"
	exit 0
fi
echo -en "Найдено:\n$scripts_to_exec \nПродолжить? (y/n) "

read item
case "$item" in
y | Y)
	sudo apt-get update && sudo apt-get upgrade -y && cat $scripts_to_exec | bash
	;;
n | N)
	echo "Прервано..."
	exit 0
	;;
*)
	echo "Прервано..."
	exit 0
	;;
esac
