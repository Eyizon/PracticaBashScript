#!/bin/bash

# Comando para ver si se proporcionó un argumento
if [ -z "$1" ]; then
    echo "Uso: $0 "
    exit 1
fi

# Ruta para llegar a la papelera o path
papelera="$HOME/.papelera"

# revisa si el archivo existe
if [ -e "$1" ]; then
    # Mueve el archivo a la papelera
    mv "$1" "$papelera/"
    echo "El archivo '$1' ha sido movido a la papelera."
else
    echo "El archivo '$1' no existe."
fi