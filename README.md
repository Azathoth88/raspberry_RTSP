## Beschreibung ##
Dieses Skript erstellt einen RTSP-Stream auf einem Raspberry-Pi und erstellt einen System-Service.
Der Stream kann innerhalb der Synology Surveillance Station zur Überwachung eingebunden werden.

## Installationsumgebung ##
- Raspberry Pi 3 (Raspberry Pi OS (Legacy, 32-Bit)
- Raspberry Camera Module 3 | Camera Module 3 NoIR

## Tools / Hilfsmittel ##
- Raspberry Pi Imager: https://www.raspberrypi.com/software/

## Installation ##
> [!CAUTION]
> Achtung: Das Skript verwendet derzeit den Standard-Benutzer "pi"


Repository herunterladen
```bash
git clone https://github.com/Azathoth88/raspberry_RTSP.git
```
Installer-Skript ausführen
```bash
cd raspberry_RTSP
chmod +x install_streamer.sh
./install_streamer.sh
```
## Stream-Aufruf ##
Wenn die Installation erfolgreich war, lässt sich der Stream am Desktop-Client über den VLC-Player testen:
**VLC-Player** starten und zu **Medien** -> **Netzwerkstream öffnen** oder **STRG+N** eingeben.

Die folgende URL eingeben: **rtsp://IP-vom-RaspberryPi:8554/stream**


## Danksagung ##
Vielen Dank an BERRY DE JAGER, der ursprünglich auf seiner Homepage eine passende Anleitung bereitgestellt hat:
https://code.berrydejager.com/Libcamera-RTSP/
