# Домашнее задание к занятию "`Резервное копирование`" - `Антипов Николай`



---

### Задание 1

* оставьте команду rsync, которая позволяет создавать зеркальную копию домашней директории пользователя в директорию /tmp/backup

* Необходимо исключить из синхронизации все директории, начинающиеся с точки (скрытые)

* Необходимо сделать так, чтобы rsync подсчитывал хэш-суммы для всех файлов, даже если их время модификации и размер идентичны в источнике и приемнике.

* На проверку направить скриншот с командой и результатом ее выполнения  



**Команда для выполнения:**  

sudo rsync -a --progress --delete --exclude '.*' --checksum /home/nik /tmp/backup


**Скриншот оригинальной папки**

![1](https://github.com/NikolayAntipov/3_rsync/blob/main/img/1sourcefiles.JPG)

**Скринщот папки с бэкапом**

![11](https://github.com/NikolayAntipov/3_rsync/blob/main/img/1distanationfiles.JPG)


---

### Задание 2

* Написать скрипт и настроить задачу на регулярное резервное копирование домашней директории пользователя с помощью rsync и cron.

* Резервная копия должна быть полностью зеркальной

* Резервная копия должна создаваться раз в день, в системном логе должна появляться запись об успешном или неуспешном выполнении операции

* Резервная копия размещается локально, в директории /tmp/backup

* На проверку направить файл crontab и скриншот с результатом работы утилиты.  



**Скриншот настроек Cron**

 ![Cron](https://github.com/NikolayAntipov/3_rsync/blob/main/img/2cron.JPG)


Исполняемый скрипт [backup_folders](https://github.com/NikolayAntipov/3_rsync/blob/main/img/backup_folder.sh)

 
**Скриншот и логов об успешном выполнении**

 ![logs](https://github.com/NikolayAntipov/3_rsync/blob/main/img/2logfile.JPG)
 
 
