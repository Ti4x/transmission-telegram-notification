
#!/bin/bash

# Creo un file temporaneo 
TMPFILE=`mktemp -t transmission.A`

# Invio un messaggio al mio bot al termine del torrent

# Per farlo mi appoggio a curl

# Setto il contenuto del messaggio

testo="Download Torrent completato: ${TR_TORRENT_NAME}" 

curl -s -X POST "https://api.telegram.org/bot374441346:AAFy3dv3Hxw-hZgn5bG_rGhOSONNN97ElVQ/sendMessage?chat_id=78135472&text=${testo}"

# cambio i permessi ai file scaricati
echo "$TR_TORRENT_NAME" | sed 's/ /\\ /g'>>$TMPFILE
chmod -R 777 /home/pi/chiavetta/downloads/TORRENT/$TMPFILE

# Rimuovo il file temporaneo

rm $TMPFILE
