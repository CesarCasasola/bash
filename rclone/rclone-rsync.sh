#!/bin/bash

LOCAL="/home/cesar/Desktop/cunori/2025/"
REMOTE="/home/cesar/cecm2893/cunori/2025/"
RCLONEV="cecm2893"

# Montamos el directorio de Google Drive
rclone mount $RCLONEV":" $REMOTE 2>&1 > /dev/null &
# Esperamos 10 segundos a que termine de montarse correctamente
sleep 10

# Comprobamos que esta montado
montado=`df | grep $RCLONEV`
if [ ${#montado} != 0 ];then 
	
	echo "Esta montado, comienza la sincronizacion"

	# # Sincronizamos con el directorio local
	# rsync -auv $REMOTE $LOCAL 

	# # Esperamos a que termine de sincronizarse todo
	# sync
	# sleep 2

    # Sincronizamos con el directorio local
	rsync -auv --delete $LOCAL $REMOTE 
    RSYNC_EXIT=$?

	# Esperamos a que termine de sincronizarse todo
	sync

	# Verificamos si rsync terminó correctamente
    # if [ $RSYNC_EXIT -eq 0 ]; then
    #     echo "Sincronización completada correctamente"
    #     sleep 2
        
    #     # Desmontamos el directorio remoto
    #     fusermount -u $REMOTE
    #     if [ $? -eq 0 ]; then
    #         echo "Directorio desmontado correctamente"
    #     else
    #         echo "Error al desmontar el directorio"
    #     fi
    # else
    #     echo "Error en la sincronización (código $RSYNC_EXIT), no se desmonta"
    #     exit 1
    # fi
else
	echo "No esta montado, no se sincroniza"
fi