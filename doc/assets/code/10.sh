Reune la información sobre los sistemas de archivos y es leído
por el demonio init para poder montarlos al bootear el SO.

Tiene varios campos:

Primero: en este campo se indica el dispositivo o la partición 
donde se encuentra el filesystem.

Segundo: aquí va el punto de montaje para el dispositivo especificado.
Tercer: el tipo de sistema de archivos. Puede tomar varios valores, 
entre los que se destacan: ext2, ext3, ext4, iso9660, nfs, ntfs, 
reiserfs, smbfs, swap, vfat, xfs.

Cuarto: en esta columna van las opciones para el montaje del filesystem. 
Son muchas y a continuación se mencionan las más comunes. 
Para un listado más completo se pueden leer el manual del comando mount 
y el del nfs (para los parámetros específicos de nfs). 

    async:  las escrituras al filesystem se demoran, 
            es decir que no se hacen en el momento sino 
            que se hacen varias escrituras juntas. 
            Esto da un mayor rendimiento, aunque si el sistema se cuelga, 
            apaga o el filesystem se desmonta, los datos se pederán 
            si aún no han sido escritos.
    auto:   el sistema de archivos será montado automáticamente al iniciar
            el sistema o al ejecutar el comando mount -a.
    noauto: debe ser montado explícitamente.
    defaults:   utiliza las opciones por defecto, que son rw, suid, dev,
                exec, auto, nouser, async.
    ro: monta el filesystem como de sólo lectura.
    rw: monta el filesystem como lectura/escritura.
    user: permite que cualquier usuario pueda montar el filesystem.
    nouser: especifica que el filesystem sólo puede ser montado por
            el usuario root y no por un usuario común.
    sync:   todas las escrituras al filesystem se hacen en el momento. 
            Esto da mayor seguridad a los datos pero un menor rendimiento.

Quinto: esta columna indica a la utilidad dump si debe o no hacer backup 
        del filesystem. Puede tomar dos valores: 0 y 1. Con 0 se indica 
        que no se debe backupear, con 1 que sí se haga. Lógicamente, 
        depende de que se tenga instalado y configurado dump, por lo que 
        en la mayoría de los casos este campo es 0.

Sexto:  en este caso se trata de una indicación para el fsck (comando que 
        chequea el filesystem) y nuevamente se define con un valor
        numérico. Las posibilidades son 0, 1 y 2. El 0 indica que el 
        filesystem no debe ser chequeado, mientras que el 1 y el 2 le
        dicen a fsck que sí lo chequee. La diferencia es que el 1 
        representa una prioridad mayor que el 2, por lo que debe 
        utilizarse para el sistema raíz y el 2 para el resto de los 
        sistemas de archivos.