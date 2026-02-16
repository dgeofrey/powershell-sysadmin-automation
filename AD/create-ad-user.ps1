# Author: David Geofrey
# Add new AD users for davidg-tech

Import-Module ActiveDirectory

$UserName = "David Geofrey"
$SamAccount = "dgeofrey"
$UPN = "dgeofrey@davidg-tech.local"
$OUPath = "OU=Employees,DC=davidg-tech,DC=local"

New-ADUser -Name $UserName -SamAccountName $SamAccount -UserPrincipalName $UPN -Enabled $true -Path $OUPath
Write-Output "User $UserName created successfully in davidg-tech environment."

