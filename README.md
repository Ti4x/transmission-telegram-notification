# transmission-telegram-notification
RICEVI NOTIFICHE TELEGRAM QUANDO TRANSMISSION TERMINA UN DOWNLOAD!

# Premessa
Considerando che questo script sfrutta un BOT non è poi il massimo della comodità.... tuttavia lo ho creato solo per scopo personale e ho comunque deciso di condividerlo nel caso qualcuno volesse utilizzarlo...

Penso che farò una guida su come utilizzarlo per i meno esperti.

Prerequisiti: Un bot telegram 
https://core.telegram.org/bots
https://core.telegram.org/

Qui ci sono maggiori informazioni.

# Come funziona
Il funzionamento è molto semplice se non basilare, sfrutta una funzionalità di Transmission e, appunto, le API di Telegram

Il suo funzionamento è:
Terminato un download viene eseguito lo script "telegram-notification.sh" il quale fa una chiamata tramite "curl" a 
https://api.telegram.org/bot<TOKEN>/sendMessage?chat_id=<VOSTRO_TELEGRAM_ID>&text=${testo}

A chi è gia noto il funzionamento dei BOT capirà per gli altri leggete pure le linee guida, spiegano molto bene

All'interno di ${testo} risiede il vero e proprio messaggio

# Piccola guida: 
1. Installare transmission-daemon e transmission-remote-cli con sudo apt-get install

2. fermare il demone perchè riscrive la configurazione ogni volta che viene stoppato
service transmission-daemon stop (potrebbe richiedere la password)

3. Configuriamo Il demone dal suo file di configurazione 
nano /etc/transmission-daemon/settings.json

4. Abilitiamo 
"script-torrent-done-enabled": true, -> in caso fosse settato su "false"

5. Diamo il percoso del nostro script
"script-torrent-done-filename": "/etc/transmission-daemon/telegram-notification.sh",

6. Salviamo il file

7. Riavviamo il demone
service transmission-daemon start

FINE.

Grazie per l'attenzione, ringrazio "morrolinux" per avermi dato l'idea (lui lo ha fatto simile ma tramite la mail) per maggiori informazioni vi lascio il suo canale YouTube, e due video che mi hanno aiutato nello "sviluppo", se così si può chiamare, del mio script.

morrolinux:
https://www.youtube.com/channel/UCnDDucQDLncrauOCmanCIgw

Configurare transmission:
https://www.youtube.com/watch?annotation_id=annotation_459521&feature=iv&src_vid=B15PIjxPSDA&v=JAGcYO9GokU

Notifica mail transmission:
https://www.youtube.com/watch?v=B15PIjxPSDA
