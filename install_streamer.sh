#!/bin/bash

# Aktualisieren der Paketlisten und Upgrade der installierten Pakete
sudo apt update && sudo apt -y full-upgrade

# Installation der benötigten Pakete
sudo apt install -y libcamera-apps vlc

# Ändern der VLC-Binärdatei, um eine Ausführung als Root zu ermöglichen
sudo sed -i 's/geteuid/getppid/' /usr/bin/vlc

# Kopieren der stream.sh in das Home-Verzeichnis des Benutzers pi
# Hinweis: Stellen Sie sicher, dass die Datei stream.sh im selben Verzeichnis wie dieses Skript liegt oder passen Sie den Pfad entsprechend an.
sudo cp stream.sh /home/pi/stream.sh

# Setzen der Ausführungsrechte für die stream.sh
sudo chmod +x /home/pi/stream.sh

# Kopieren der stream.service in das system-wide systemd Verzeichnis
sudo cp stream.service /lib/systemd/system/stream.service

# Setzen der korrekten Berechtigungen für die stream.service Datei
sudo chmod 644 /lib/systemd/system/stream.service

# Systemd darüber informieren, dass eine neue Service-Datei hinzugefügt wurde
sudo systemctl daemon-reload

# Starten des neuen Services
sudo systemctl start stream

# Aktivieren des Services, sodass er automatisch beim Systemstart ausgeführt wird
sudo systemctl enable stream

# Anzeigen des Status des Services, um zu bestätigen, dass er korrekt läuft
sudo systemctl status stream --no-pager

echo "Installation, Konfiguration und Service-Start abgeschlossen."
