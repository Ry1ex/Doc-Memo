## Scanning Options | Options de scan

| **Nmap Option** | **Description** | **Description FR** |
|---|----|-------------------|
| `10.10.10.0/24` | Target network range. | Plage de réseau cible. |
| `-sn` | Disables port scanning. | Désactive l'analyse des ports. |
| `-Pn` | Disables ICMP Echo Requests |
| `-n` | Disables DNS Resolution. | Désactive les demandes d'écho ICMP |
| `-PE` | Performs the ping scan by using ICMP Echo Requests against the target. |
| `--packet-trace` | Shows all packets sent and received. | Effectue le scan ping en utilisant des requêtes d'écho ICMP contre la cible. |
| `--reason` | Displays the reason for a specific result. | Affiche la raison d'un résultat spécifique. |
| `--disable-arp-ping` | Disables ARP Ping Requests. | Désactive les requêtes Ping ARP. |
| `--top-ports=<num>` | Scans the specified top ports that have been defined as most frequent. | Analyse les ports supérieurs spécifiés qui ont été définis comme les plus fréquents.  |
| `-p-` | Scan all ports. | Scanner tous les ports. |
| `-p22-110` | Scan all ports between 22 and 110. | Scanner tous les ports entre 22 et 110. |
| `-p22,25` | Scans only the specified ports 22 and 25. | Scanner tous les ports entre 22 et 110. |
| `-F` | Scans top 100 ports. | Analyse les 100 premiers ports. |
| `-sS` | Performs an TCP SYN-Scan. | Effectue un TCP SYN-Scan. |
| `-sA` | Performs an TCP ACK-Scan. | Effectue un TCP ACK-Scan. |
| `-sU` | Performs an UDP Scan. | Effectue un scan UDP. |
| `-sV` | Scans the discovered services for their versions. | Analyse les services découverts pour connaître leur version. |
| `-sC` | Perform a Script Scan with scripts that are categorized as "default". | Effectuez une analyse des scripts avec les scripts qui sont catégorisés comme "par défaut". |
| `--script <script>` | Performs a Script Scan by using the specified scripts. | Effectue une analyse de script en utilisant les scripts spécifiés. |
| `-O` | Performs an OS Detection Scan to determine the OS of the target. | Effectue un scan de détection du système d'exploitation pour déterminer le système d'exploitation de la cible. |
| `-A` | Performs OS Detection, Service Detection, and traceroute scans. | Effectue des analyses de détection de système d'exploitation, de détection de service et de traceroute. |
| `-D RND:5` | Sets the number of random Decoys that will be used to scan the target. | Définit le nombre de leurres aléatoires qui seront utilisés pour scanner la cible. |
| `-e` | Specifies the network interface that is used for the scan. | Spécifie l'interface réseau utilisée pour l'analyse. |
| `-S 10.10.10.200` | Specifies the source IP address for the scan. | Spécifie l'adresse IP source pour le scan. |
| `-g` | Specifies the source port for the scan. | Spécifie le port source pour le scan. |
| `--dns-server <ns>` | DNS resolution is performed by using a specified name server. | La résolution DNS est effectuée en utilisant un serveur de noms spécifié. |




## Output Options | Options de sortie


| **Nmap Option** | **Description** | **Description FR** |
|---|----|-------------------|
| `-oA filename` | Stores the results in all available formats starting with the name of "filename". | Stocke les résultats dans tous les formats disponibles en commençant par le nom de "nom de fichier". |
| `-oN filename` | Stores the results in normal format with the name "filename". | Stocke les résultats au format normal avec le nom "nom de fichier". |
| `-oG filename` | Stores the results in "grepable" format with the name of "filename". | Stocke les résultats au format "grepable" avec le nom de "filename". |
| `-oX filename` | Stores the results in XML format with the name of "filename". | Stocke les résultats au format XML avec le nom de "nom de fichier". |



## Performance Options | Options de performance

| **Nmap Option** | **Description** | **Description FR** |
|---|----|-------------------|
| `--max-retries <num>` | Sets the number of retries for scans of specific ports. | Définit le nombre de tentatives pour les analyses de ports spécifiques. |
| `--stats-every=5s` | Displays scan's status every 5 seconds. | Affiche l'état du scan toutes les 5 secondes. |
| `-v/-vv` | Displays verbose output during the scan. | Affiche la sortie verbeuse pendant l'analyse. |
| `--initial-rtt-timeout 50ms` | Sets the specified time value as initial RTT timeout. | Définit la valeur de temps spécifiée comme délai d'attente RTT initial. |
| `--max-rtt-timeout 100ms` | Sets the specified time value as maximum RTT timeout. | Définit la valeur de temps spécifiée comme délai d'attente RTT maximum. |
| `--min-rate 300` | Sets the number of packets that will be sent simultaneously. | Définit le nombre de paquets qui seront envoyés simultanément. |
| `-T <0-5>` | Specifies the specific timing template. | Spécifie le modèle de synchronisation spécifique. |
