Si intentamos ver /etc/shadow desde un usuario distinto al root nos 
devuelve que no tenemos permiso de lectura sobre el archivo. Dicho archivo
pertenece al root, y aunque ni siquiera root tenga permiso de r,w,x, sabemos
que por defecto, la politica de control de accesos, hace que el root pueda 
consultar cualquier archivo dentro del sistema ya que es el administrador. 
Si quisieramos evitarlo podemos cambiar las propiedades del archivo mediante:

#!/bin/bash
[root@localhost ~] $ chattr +i <archivo>

De esta forma, root no podría ver el contenido del archivo, solo el propietario.