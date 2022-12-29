#! /bin/bash

# Exercice 2

if [ "$(head -n 1 $1)" != "<!DOCTYPE html>" ]
    then
        echo "Erreur : $1 n'est pas un fichier html" >&2
        exit 4
    else
        sed -e '/<li>/s/g/kg/g' -e 's/<b>/**/g' -e 's/<\/b>/**/g' $1
fi