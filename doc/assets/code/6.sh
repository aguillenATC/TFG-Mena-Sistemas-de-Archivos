#!/bin/bash
[root@localhost ~] $ groupadd super
[root@localhost ~] $ groupadd nuevo
[root@localhost ~] $ groupadd pencos


[root@localhost ~] $ gpass -a paquita super
[root@localhost ~] $ gpass -a ola pencos
[root@localhost ~] $ gpass -a no pencos
[root@localhost ~] $ gpass -a root super


[root@localhost ~] $ id
uid=0(root) gid=0(root) 
groups=0(root),1(bin),2(daemon),3(sys),4(adm),6(disk),10(wheel)





