
#!/bin/bash

# Invio un messaggio al mio bot al termine del torrent

# Per farlo mi appoggio a curl

# Setto il contenuto del messaggio

testo="Download Torrent completato: ${TR_TORRENT_NAME}" 

# <TUO_ID> è il vostro id univoco telegram, lo trovate scrivendo al bot e usando la funzione
# getupdates al posot di sendMessage

curl -s -X POST "https://api.telegram.org/bot<BOT_TOKEN>/sendMessage?chat_id=<TUO_ID>=${testo}"
