# Author: David Geofrey
$CriticalServices = @("Spooler","wuauserv")
foreach ($svc in $CriticalServices) {
    if ((Get-Service $svc).Status -ne "Running") {
        Restart-Service $svc -Force
        Write-Output "Service $svc restarted on davidg-tech server."
    } else {
        Write-Output "Service $svc is running normally."
    }
}

