#!/bin/bash

# comprobar si se proporcionó un argumento
if [ -z "$1" ]; then
    echo "Uso: $0 "
    exit 1
fi

#  ruta de la papelera
papelera="$HOME/.papelera"

# revisa si el archivo existe en la papelera
if [ -e "$papelera/$1" ]; then
    # Mueve el archivo al directorio actual
    mv "$papelera/$1" .
    echo "El archivo '$1' ha sido recuperado de la papelera."
else
    echo "El archivo '$1' no existe en la papelera."
fi