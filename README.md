# Metrics

## Description

The project consists of two parts:
1. Скрипт по выводу информации общей CPU и Memory вашей OS
2. Image of Docker container, который выводит информацию about processes running on the host machine, PID and UID processes.

## Additional packages for OS

Для того что бы все работало нужно до установить такие пакеты на вашу ОС (Example on OS Debian 9):
```bash
apt install python3  python3-pip
pip3 install psutil
```
And install docker, more information on this [url]:https://docs.docker.com/install/linux/docker-ce/debian/

## Examples
### Metrics (Bash script)

```bash
./metrics.sh cpu


```
