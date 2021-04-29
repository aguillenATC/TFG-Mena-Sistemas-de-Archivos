#!/bin/bash
read -p 'Estás en clase o en casa {clase, casa}: ' ubicacion
if [ $ubicacion == 'clase' ]; then
    cp /fenix/depar/lsi/UML/*.gz /tmp
    cd /tmp
    gunzip *.gz
    ./kernel32-3.0.4 ubda=./Fedora14-x86-root_fs mem=1024m
elif [ $ubicacion == 'casa' ]; then
    ./kernel32-3.0.4 ubda=./Fedora14-x86-root_fs mem=1024m
else
    echo "No se donde te ubicas, luego no sé que hacer"
fi
