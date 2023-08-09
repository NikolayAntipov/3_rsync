#!/bin/bash

rsync -a --delete /home/nik /tmp/backup
if [ $? -eq 0 ]; then
   logger "Резервное копирование  выполнено"
else
   logger "Ошибка при выполнении резервного копирования"
fi

