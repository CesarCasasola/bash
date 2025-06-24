#!/bin/bash

# Directorio del script
dir=$(dirname "$0")
# Se asume que el directorio data está al nivel del script
data=$dir/data

# Imprimir la descripción formateada del diccionario de datos D$ata_Dictionary.csv
cat $data/Data_Dictionary.csv | awk -F ',' '{print $1"."$2" -> "$3}'

