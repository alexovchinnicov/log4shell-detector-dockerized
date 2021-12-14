# log4shell-detector-dockerized
Detector for Log4Shell exploitation attempts in Docker container

```
sudo docker run --rm -it -v /var/log:/log <containername>:latest -p /log --quick
```
