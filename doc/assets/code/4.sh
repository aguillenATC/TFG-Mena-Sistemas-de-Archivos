#!/bin/bash
[root@localhost ~] $ cat /etc/passwd
    root::0:0:root:/root:/bin/bash
    bin:x:1:1:bin:/bin:/sbin/nologin
    daemon:x:2:2:daemon:/sbin:/sbin/nologin
    adm:x:3:4:adm:/var/adm:/sbin/nologin
    lp:x:4:7:lp:/var/spool/lpd:/sbin/nologin
    sync:x:5:0:sync:/sbin:/bin/sync
    shutdown:x:6:0:shutdown:/sbin:/sbin/shutdown
    halt:x:7:0:halt:/sbin:/sbin/halt
    mail:x:8:12:mail:/var/spool/mail:/sbin/nologin
    uucp:x:10:14:uucp:/var/spool/uucp:/sbin/nologin
    operator:x:11:0:operator:/root:/sbin/nologin
    games:x:12:100:games:/usr/games:/sbin/nologin
    gopher:x:13:30:gopher:/var/gopher:/sbin/nologin
    ftp:x:14:50:FTP User:/var/ftp:/sbin/nologin
    nobody:x:99:99:Nobody:/:/sbin/nologin
    saslauth:x:499:499:"Saslauthd user":/var/empty/saslauth:/sbin/nologin
    sshd:x:74:74:Privilege-separated SSH:/var/empty/sshd:/sbin/nologin
    mailnull:x:47:47::/var/spool/mqueue:/sbin/nologin
    smmsp:x:51:51::/var/spool/mqueue:/sbin/nologin
    paquita:x:500:500::/home/paquita:/bin/bash
    paquito:x:501:500:paquito:/home/paquito:/bin/bash
    elena:x:502:500:elena:/home/elena:/bin/bash
    miguel:x:503:500:miguel:/home/miguel:/bin/bash
    ola:x:504:504::/home/ola:/bin/bash
    personaje:x:510:510::/home/personaje:/bin/bash
    no:x:511:511::/home/no:/bin/nologin
    noo:x:512:512::/home/noo:/sbin/nologin

El formato es:
<usuario>:<claveEncriptada>:<uid>:<gid>:<directorioTrabajo>:<terminal>

