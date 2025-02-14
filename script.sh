#!/bin/bash

#tipos de variables: Universales -> Numero, bool o 
n1=10 #sin espacios
n2=7
echo "El valor de n1 es $n1"

#Esctructuras de control condicionales
#operadores condicionales < (-lt) >(-gt) <= (-le) => (-ge)
# == (-eq) != (-ne)
if [[ $n1 -gt $n2 ]]; then 
    echo "La sentencia es verdadera $n1 $n2"
else
    echo "La sentencia es falsa $n1 $n2"
fi 

#todo programa regresa un valor, si es exitoso es 0
res=$?
echo "El resultado de la ejecusion es $res"

if [[ $? -eq 0 ]]; then
    echo "La sentencia se ejecuto correctamente"
else
    echo "La sentencia fallo"
fi

#operadores para manipular archivos
#-e Si un archivo o carpeta existe
#-d si es una carpeta
#-r -w -x si puede leer, escribir, ejecutar
#-s si el archivo esta vacio

#crear un archivo
file="./file-demo"

if [[ -s $file ]]; then
    echo "El archivo contiene algo."
else
    echo "El archivo esta vacio."
fi

#operadpres logicos AND ()&& OR (||)
if [ -r $file ] && [ -x $file ]; then
    echo "El archivo se puede leer y ejecutar"
else
    echo "El archivo no se puede leer ni ejecutar"
fi 

#estructura de control case
# $ = array donde $# ($1. $2, $3,...$n) -h hola
case $1 in 
    hola )
        echo "Bienvenido"
    ;;
    adios )
        echo "Adios"
    ;;
    *)
        echo "No entiendo lo que dices"
    ;;
esac

#estructuras iterativas

#while
user=""
while [[ $user != "admin" ]]; do
    read -p "¿cual es tu usuario?" user 
done 

#for
for i {1..5}; do
    echo "El numero es $i"
done

#estilo c
for ((i=0; i<5; i++)); do
    echo "El numero es $i"
done 

invitados=(pedro juan david maria lulu ivan)
for invitado in ${invitados[@]}; do
    echo "Hola $invitado"
done

#funciones
suma(){
    echo "Hola desde la funcion suma."
}

resta(){
    echo $(( $1 - $2 ))
}

suma
total=$(resta 9 4)
echo "El total es $total"