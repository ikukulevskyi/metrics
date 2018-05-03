# Metrics

## Description

The project consists of two parts:
1. A script for outputing general information about CPU and Memory of host mashine.
2. Image of Docker container, that showing information about processes running, PID and UID processes on the host machine.

## Dependencies

#### 1. Python
```bash
apt install python3  python3-pip
```
#### 2. psutil
```bash
pip3 install psutil
```
#### 3. Docker
You can find instruction for Docker install [here](https://docs.docker.com/install/linux/docker-ce/debian/)

## Examples
### Metrics (Bash script)

```bash
~# ./metrics.sh cpu
CPU Metrics:
        system.cpu.idle 98.08
        system.cpu.user 0.75
        system.cpu.guest 0.00
        system.cpu.iowait 0.42
        system.cpu.stolen 0.00
        system.cpu.system 0.71

~# ./metrics.sh mem
Memory Metrics:
        virtual total 4037080
        virtual used 566488
        virtual free 2404880
        virtual shared 57136
        swap total 9765884
        swap used 14476
        swap free 9751408
```
### Metrics (Python script)
```python
~# ./metrics cpu
system.cpu.idle 98.08
system.cpu.user 0.75
system.cpu.guest 0.00
system.cpu.iowait 0.42
system.cpu.stolen 0.00
system.cpu.system  0.71
~# ./metrics mem
virtual total 4133969920
virtual used 610500608
virtual free 2342461440
virtual shared 58507264
swap total 10000265216
swap used 14823424
swap free 9985441792
```
### Docker (Bash script)

Steps:
1. Start build process of Docker image from project directory on your host machine
2. Run container

```bash
docker build -t metrics .
docker run -i -t -v /proc:/opt/proc metrics:latest
#RESULTS
Name:systemd
Pid:1
Uid:0
Name:watchdog/0
Pid:10
Uid:0
Name:systemd-timesyn
Pid:1002
Uid:100
Name:dhclient
Pid:1005
Uid:0
Name:sshd
Pid:1067
Uid:0
Name:iscsid
Pid:1081
Uid:0
Name:iscsid
Pid:1082
Uid:0
..........
```
Also this project is published on [hub.docker.com](https://hub.docker.com/r/zozulya/metrics/)
