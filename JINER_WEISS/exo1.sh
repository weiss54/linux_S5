#! /bin/bash

# Exercice 1

if [ $# -eq 0 ]
then
  echo "Erreur: $0 <chaine de caractere>, au minimum un parametre" >&2
  exit 5
else
  for i in "$@"
  do
    for j in $(seq 1 ${#i})
    do
      echo "${i:$j-1:1}"
    done
  done
fi