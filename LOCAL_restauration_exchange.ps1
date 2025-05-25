#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! Script à exécuter en local sur le serveur exchange !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!#
# Script de redémarage des services exchange de base en cas d'arret ou disparition de ceux si de la console MMC "services" #
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! Script à exécuter en local sur le serveur exchange !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!#

    # Arrête les services de base d'exchange

    Get-service -name "msexchange*" -dependentservices | Where-Object {$_.Status -eq 'Running'} | Stop-Service

    # Démarre les services de base d'exchange

    Get-service -name "msexchange*" -dependentservices | Where-Object {$_.Status -eq 'stopped'} | Start-Service

    # Notifie dans un fichier de log la derniere utilisation du script

    $date =(Get-Date)
    echo Derniere utilisation du script de restauration des service exchange le $date > incident_exchange.log