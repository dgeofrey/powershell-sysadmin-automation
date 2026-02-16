# Author: David Geofrey
$ThresholdGB = 20
Get-PSDrive -PSProvider FileSystem | ForEach-Object {
    if ($_.Free -lt ($ThresholdGB * 1GB)) {
        Write-Output "WARNING: Drive $($_.Name) on davidg-tech server is low: $([math]::Round($_.Free/1GB,2)) GB"
    }
}
