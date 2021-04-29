#!/bin/bash
[root@localhost ~] $ adduser paquita
[root@localhost ~] $ adduser ola --disabled-login
[root@localhost ~] $ adduser --gid 500 alejandro
[root@localhost ~] $ adduser --no-create-home --uid 510 personaje
[root@localhost ~] $ adduser --shell /sbin/nologin noo

# El usuario ola desaparece de /etc/{shadow, passwd, groups}
# pero deja /home/alejandro
[root@localhost ~] $ userdel alejandro

# Una vez iniciado sesion con paquita, ella puede ver sus
# archivos de home 
[root@localhost ~] $ su paquita
[paquita@localhost root] $ls -l
    dr-xr-x---  2 root root 4096 Sep 15 13:04 .
    dr-xr-xr-x 22 root root 4096 Sep 16 12:50 ..
    -rw-------  1 root root 3584 Sep 16 12:42 .bash_history
    -rw-r--r--  1 root root   18 Mar 30  2009 .bash_logout
    -rw-r--r--  1 root root  176 Mar 30  2009 .bash_profile
    -rw-r--r--  1 root root  176 Sep 22  2004 .bashrc
    -rw-r--r--  1 root root  100 Sep 22  2004 .cshrc
    -rw-r--r--  1 root root  129 Dec  3  2004 .tcshrc





