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
Der Stream lässt sich im VLC-Player testen:
rtsp://IP:8554/stream
