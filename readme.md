<!-- Задание 1 - Docker CLI -->
konstantinvolkov@MacBook-Air-konstantin docker % docker pull busybox
Using default tag: latest
latest: Pulling from library/busybox
c34182c7a03d: Pull complete 
Digest: sha256:6776a33c72b3af7582a5b301e3a08186f2c21a3409f0d2b52dfddbdbe24a5b04
Status: Downloaded newer image for busybox:latest
docker.io/library/busybox:latest

What's Next?
  View a summary of image vulnerabilities and recommendations → docker scout quickview busybox
konstantinvolkov@MacBook-Air-konstantin docker % docker run --name pinger busybox ping -c 7 netology.ru

PING netology.ru (188.114.98.224): 56 data bytes
64 bytes from 188.114.98.224: seq=0 ttl=63 time=50.250 ms
64 bytes from 188.114.98.224: seq=1 ttl=63 time=34.683 ms
64 bytes from 188.114.98.224: seq=2 ttl=63 time=27.447 ms
64 bytes from 188.114.98.224: seq=3 ttl=63 time=26.145 ms
64 bytes from 188.114.98.224: seq=4 ttl=63 time=24.232 ms
64 bytes from 188.114.98.224: seq=5 ttl=63 time=26.777 ms
64 bytes from 188.114.98.224: seq=6 ttl=63 time=37.662 ms

--- netology.ru ping statistics ---
7 packets transmitted, 7 packets received, 0% packet loss
round-trip min/avg/max = 24.232/32.456/50.250 ms
konstantinvolkov@MacBook-Air-konstantin docker % docker ps -a

CONTAINER ID   IMAGE     COMMAND                  CREATED          STATUS                      PORTS     NAMES
dc9d180f46ed   busybox   "ping -c 7 netology.…"   57 seconds ago   Exited (0) 50 seconds ago             pinger
konstantinvolkov@MacBook-Air-konstantin docker % docker logs pinger

PING netology.ru (188.114.98.224): 56 data bytes
64 bytes from 188.114.98.224: seq=0 ttl=63 time=50.250 ms
64 bytes from 188.114.98.224: seq=1 ttl=63 time=34.683 ms
64 bytes from 188.114.98.224: seq=2 ttl=63 time=27.447 ms
64 bytes from 188.114.98.224: seq=3 ttl=63 time=26.145 ms
64 bytes from 188.114.98.224: seq=4 ttl=63 time=24.232 ms
64 bytes from 188.114.98.224: seq=5 ttl=63 time=26.777 ms
64 bytes from 188.114.98.224: seq=6 ttl=63 time=37.662 ms

--- netology.ru ping statistics ---
7 packets transmitted, 7 packets received, 0% packet loss
round-trip min/avg/max = 24.232/32.456/50.250 ms
konstantinvolkov@MacBook-Air-konstantin docker % docker start pinger

pinger
konstantinvolkov@MacBook-Air-konstantin docker % docker ps -a

CONTAINER ID   IMAGE     COMMAND                  CREATED         STATUS                      PORTS     NAMES
dc9d180f46ed   busybox   "ping -c 7 netology.…"   3 minutes ago   Exited (0) 47 seconds ago             pinger
konstantinvolkov@MacBook-Air-konstantin docker % docker logs <container_id>                       

zsh: parse error near `\n'
konstantinvolkov@MacBook-Air-konstantin docker % docker logs <dc9d180f46ed> 
zsh: parse error near `\n'
konstantinvolkov@MacBook-Air-konstantin docker % docker logs <container_dc9d180f46ed>   
zsh: parse error near `\n'
konstantinvolkov@MacBook-Air-konstantin docker % docker logs dc9d180f46ed 
PING netology.ru (188.114.98.224): 56 data bytes
64 bytes from 188.114.98.224: seq=0 ttl=63 time=50.250 ms
64 bytes from 188.114.98.224: seq=1 ttl=63 time=34.683 ms
64 bytes from 188.114.98.224: seq=2 ttl=63 time=27.447 ms
64 bytes from 188.114.98.224: seq=3 ttl=63 time=26.145 ms
64 bytes from 188.114.98.224: seq=4 ttl=63 time=24.232 ms
64 bytes from 188.114.98.224: seq=5 ttl=63 time=26.777 ms
64 bytes from 188.114.98.224: seq=6 ttl=63 time=37.662 ms

--- netology.ru ping statistics ---
7 packets transmitted, 7 packets received, 0% packet loss
round-trip min/avg/max = 24.232/32.456/50.250 ms
PING netology.ru (188.114.98.224): 56 data bytes
64 bytes from 188.114.98.224: seq=0 ttl=63 time=26.356 ms
64 bytes from 188.114.98.224: seq=1 ttl=63 time=26.103 ms
64 bytes from 188.114.98.224: seq=2 ttl=63 time=24.568 ms
64 bytes from 188.114.98.224: seq=3 ttl=63 time=112.080 ms
64 bytes from 188.114.98.224: seq=4 ttl=63 time=24.831 ms
64 bytes from 188.114.98.224: seq=5 ttl=63 time=26.639 ms
64 bytes from 188.114.98.224: seq=6 ttl=63 time=24.765 ms

--- netology.ru ping statistics ---
7 packets transmitted, 7 packets received, 0% packet loss
round-trip min/avg/max = 24.568/37.906/112.080 ms
konstantinvolkov@MacBook-Air-konstantin docker % docker logs pinger | grep "PING" | wc -l

       2
konstantinvolkov@MacBook-Air-konstantin docker % docker logs pinger | grep "icmp_seq" | wc -l

       0
konstantinvolkov@MacBook-Air-konstantin docker % 

<!-- уровень понимания происходящего -0% -->

<!-- Задание 2 - Environment Variables -->

konstantinvolkov@MacBook-Air-konstantin docker % docker pull node:15.14

15.14: Pulling from library/node
41f38ce3010a: Pull complete 
ce440adabe2a: Pull complete 
b7c0a158e8c1: Pull complete 
d82fbf846f6f: Pull complete 
c190b75eb2b4: Pull complete 
1ce0b6aec0ac: Pull complete 
d461dd6a01f5: Pull complete 
860542326137: Pull complete 
fba155217a46: Pull complete 
Digest: sha256:608bba799613b1ebf754034ae008849ba51e88b23271412427b76d60ae0d0627
Status: Downloaded newer image for node:15.14
docker.io/library/node:15.14

What's Next?
  View a summary of image vulnerabilities and recommendations → docker scout quickview node:15.14
konstantinvolkov@MacBook-Air-konstantin docker % docker run -it --name mynode -e NAME=konstantin  -e SURNAME=volkov  node:15.14
Welcome to Node.js v15.14.0.
Type ".help" for more information.
> node index.js
node index.js
     ^^^^^

Uncaught SyntaxError: Unexpected identifier
> docker build -t mynode .
docker build -t mynode .
       ^^^^^

Uncaught SyntaxError: Unexpected identifier
> docker build -t mynode .
docker build -t mynode .
       ^^^^^

Uncaught SyntaxError: Unexpected identifier
> %                                                                                      
konstantinvolkov@MacBook-Air-konstantin docker % 
konstantinvolkov@MacBook-Air-konstantin docker % node index.js
Привет, undefined undefined!
konstantinvolkov@MacBook-Air-konstantin docker % docker build -t mynode .

[+] Building 0.1s (5/5) FINISHED                                  docker:desktop-linux
 => [internal] load build definition from Dockerfile                              0.0s
 => => transferring dockerfile: 208B                                              0.0s
 => [internal] load metadata for docker.io/library/node:latest                    0.0s
 => [internal] load .dockerignore                                                 0.0s
 => => transferring context: 2B                                                   0.0s
 => [1/1] FROM docker.io/library/node:latest                                      0.0s
 => exporting to image                                                            0.0s
 => => exporting layers                                                           0.0s
 => => writing image sha256:11c4fe5821a4c70f2e78faf0452fbf02d96f0e7da49d380c8f60  0.0s
 => => naming to docker.io/library/mynode                                         0.0s

What's Next?
  View a summary of image vulnerabilities and recommendations → docker scout quickview
konstantinvolkov@MacBook-Air-konstantin docker % docker run -it --rm -e NAME="константин" -e SURNAME="волков" mynode
Привет, константин волков!
konstantinvolkov@MacBook-Air-konstantin docker % docker stop $(docker ps -q)

5b62e406cd2c
konstantinvolkov@MacBook-Air-konstantin docker % docker rmi node:15.14          

Error response from daemon: conflict: unable to remove repository reference "node:15.14" (must force) - container 5b62e406cd2c is using its referenced image c9b1cc6b5379
konstantinvolkov@MacBook-Air-konstantin docker % docker rmi node:15.14

Error response from daemon: conflict: unable to remove repository reference "node:15.14" (must force) - container 5b62e406cd2c is using its referenced image c9b1cc6b5379
konstantinvolkov@MacBook-Air-konstantin docker % docker rm  node:15.14

Error response from daemon: No such container: node:15.14
konstantinvolkov@MacBook-Air-konstantin docker % docker stop 5b62e406cd2c  

5b62e406cd2c
konstantinvolkov@MacBook-Air-konstantin docker % 

<!-- Задание 3 - Volumes -->

konstantinvolkov@MacBook-Air-konstantin docker % docker pull node:15.14

15.14: Pulling from library/node
Digest: sha256:608bba799613b1ebf754034ae008849ba51e88b23271412427b76d60ae0d0627
Status: Image is up to date for node:15.14
docker.io/library/node:15.14

What's Next?
  View a summary of image vulnerabilities and recommendations → docker scout quickview node:15.14
konstantinvolkov@MacBook-Air-konstantin docker % docker run -d --name first_node -v $(pwd)/data:/var/first/data node:15.14

a1df9cc0b42a8af0fbdf4e47613fb91c43fcf0022c36d02fb6a42a285a891410
konstantinvolkov@MacBook-Air-konstantin docker % docker run -d --name second_node -v $(pwd)/data:/var/second/data node:15.14

380037da52a8c80dc340ccd8e161cefd0fb1b7e432addefddaa611a9e95b935d
konstantinvolkov@MacBook-Air-konstantin docker % docker exec first_node sh -c "echo 'Содержимое файла' > /var/first/data/file.txt"

Error response from daemon: container a1df9cc0b42a8af0fbdf4e47613fb91c43fcf0022c36d02fb6a42a285a891410 is not running
konstantinvolkov@MacBook-Air-konstantin docker % docker start first_node

first_node
konstantinvolkov@MacBook-Air-konstantin docker % docker exec first_node sh -c "echo 'Содержимое файла' > /var/first/data/file.txt"

Error response from daemon: container a1df9cc0b42a8af0fbdf4e47613fb91c43fcf0022c36d02fb6a42a285a891410 is not running
konstantinvolkov@MacBook-Air-konstantin docker % docker ps

CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
konstantinvolkov@MacBook-Air-konstantin docker % docker start first_node
first_node
konstantinvolkov@MacBook-Air-konstantin docker % docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
konstantinvolkov@MacBook-Air-konstantin docker % docker start first_node

first_node
konstantinvolkov@MacBook-Air-konstantin docker % docker exec
"docker exec" requires at least 2 arguments.
See 'docker exec --help'.

Usage:  docker exec [OPTIONS] CONTAINER COMMAND [ARG...]

Execute a command in a running container
konstantinvolkov@MacBook-Air-konstantin docker % docker exec first_node sh -c "echo 'Содержимое файла' > /var/first/data/file.txt"

Error response from daemon: container a1df9cc0b42a8af0fbdf4e47613fb91c43fcf0022c36d02fb6a42a285a891410 is not running
konstantinvolkov@MacBook-Air-konstantin docker % docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
konstantinvolkov@MacBook-Air-konstantin docker % docker start first_node

first_node
konstantinvolkov@MacBook-Air-konstantin docker % docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
konstantinvolkov@MacBook-Air-konstantin docker % 

<!-- отправляю с ошибкой так как не я не gpt не понимаем что тут не так -->