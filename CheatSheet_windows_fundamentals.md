| **Command** | **Description** | **Description FR** |
| --------------|-------------------|-------------------|
| `xfreerdp /v:<target IP address> /u:htb-student /p:<password>` | RDP to lab target | RDP à la cible du laboratoire |
| `Get-WmiObject -Class win32_OperatingSystem` | Get information about the operating system | Obtenir des informations sur le système d'exploitation |
| `dir c:\ /a` | View all files and directories in the c:\ root directory | Afficher tous les fichiers et répertoires du répertoire racine c:\ 
| `tree <directory>` | Graphically displaying the directory structure of a path | Affichage graphique de la structure des répertoires d'un chemin |
| `tree c:\ /f \| more` | Walk through results of the `tree` command page by page | Parcourir les résultats de la commande `tree` page par page |
| `icacls <directory>` | View the permissions set on a directory | Afficher les autorisations définies sur un répertoire |
| `icacls c:\users /grant joe:f` | Grant a user full permissions to a directory | Accorder à un utilisateur des autorisations complètes sur un répertoire |
| `icacls c:\users /remove joe` | Remove a users' permissions on a directory | Supprimer les autorisations d'un utilisateur sur un répertoire |
| `Get-Service` | `PowerShell` cmdlet to view running services | `PowerShell`cmdlet pour afficher les services en cours d'exécution |
| `help <command>` | Display the help menu for a specific command | Afficher le menu d'aide pour une commande spécifique |
| `get-alias` | List `PowerShell` aliases | Lister les alias `PowerShell` |
| `New-Alias -Name "Show-Files" Get-ChildItem` | Create a new `PowerShell` alias | Créer un nouvel alias `PowerShell` |
| `Get-Module \| select Name,ExportedCommands \| fl` | View imported `PowerShell` modules and their associated commands | Afficher les modules `PowerShell` importés et leurs commandes associées |
| `Get-ExecutionPolicy -List` | View the `PowerShell` execution policy | Afficher la politique d'exécution de `PowerShell` |
| `Set-ExecutionPolicy Bypass -Scope Process` | Set the `PowerShell` execution policy to bypass for the current session | Définissez la stratégie d'exécution `PowerShell` à ignorer pour la session en cours |
| `wmic os list brief` | Get information about the operating system with `wmic` | Obtenir des informations sur le système d'exploitation avec `wmic` |
| `Invoke-WmiMethod` | Call methods of `WMI` objects | Méthodes d'appel des objets `WMI` 
| `whoami /user` | View the current users' SID | Afficher le SID des utilisateurs actuels 
| `reg query <key>` | View information about a registry key | Afficher les informations sur une clé de registre |
| `Get-MpComputerStatus` | Check which `Defender` protection settings are enabled | Vérifiez quels paramètres de protection `Defender` sont activés |
| `sconfig` | Load Server Configuration menu in Windows Server Core | Menu Charger la configuration du serveur dans Windows Server Core |
