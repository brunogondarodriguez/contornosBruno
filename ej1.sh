#!/bin/bash
#echo "Escoge opción:
#  1. Crear
#  2. Borrar
#  3. Cambiar"
#read opcion

select opcion in "Crear usuario" "Borrar" "Cambiar" "Salir"
do
case $opcion in
  "Crear usuario")
    echo "Creando..."
    read -p "Nombre usuario?" usuario
    useradd -m -s /bin/bash $usuario
    ;;
  "Borrar")
    echo "Borrando..."
    read usuario
    userdel -r $usuario
    ;;
  "Cambiar")
    echo "Modificar ..."
    read -p "Nombre usuario?" usuario
    passwd $usuario
    ;;
  "Salir")
    exit 0
esac
done
