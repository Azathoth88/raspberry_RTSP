## Beschreibung ##
Dieses Skript erstellt einen RTSP-Stream auf einem Raspberry-Pi und erstellt einen System-Service.
Der Stream kann innerhalb der Synology Surveillance Station zur Überwachung eingebunden werden.

## Installationsumgebung ##
- Raspberry Pi 3 (Raspberry Pi OS (Legacy, 32-Bit)
- Raspberry Camera Module 3 | Camera Module 3 NoIR

## Tools / Hilfsmittel ##
- Raspberry Pi Imager: https://www.raspberrypi.com/software/
- SD Card Formatter: https://www.sdcard.org/downloads/formatter/



## Installation ##
> [!CAUTION]
> Achtung: Das Skript verwendet derzeit den Standard-Benutzer "pi"

```bash
sudo apt-get install git
```

Repository herunterladen
```bash
git clone https://github.com/Azathoth88/raspberry_RTSP.git
```
Installer-Skript ausführen
```bash
cd raspberry_RTSP
```
```bash
chmod +x install_streamer.sh
```
```bash
./install_streamer.sh
```
## Stream-Aufruf ##
Wenn die Installation erfolgreich war, lässt sich der Stream am Desktop-Client über den VLC-Player testen:
**VLC-Player** starten und zu **Medien** -> **Netzwerkstream öffnen** oder **STRG+N** eingeben.

Die folgende URL eingeben: **rtsp://IP-vom-RaspberryPi:8554/stream**

## Hilfsskripte ##
Neustart
```bash
sudo shutdown -r now```


## Einbindung in Synology Surveillance Station ##
* Neue Kamera hinzufügen
* Marke: Benutzer definiert
* Typ: Streaming - RTSP
* Pfad: IP-vom-RaspberryPi:8554/stream

## Danksagung ##
Vielen Dank an BERRY DE JAGER, der ursprünglich auf seiner Homepage eine passende Anleitung bereitgestellt hat:
https://code.berrydejager.com/Libcamera-RTSP/
