# Author: David Geofrey
# Bulk Add AD Users for davidg-tech
# CSV format: FirstName,LastName,SamAccount,UPN

Import-Module ActiveDirectory

# Path to your CSV file
$CsvPath = ".\users.csv"

# OU where users will be created
$OUPath = "OU=Employees,DC=davidg-tech,DC=local"

# Import CSV
$Users = Import-Csv -Path $CsvPath

foreach ($user in $Users) {
    $FullName = "$($user.FirstName) $($user.LastName)"
    $SamAccount = $user.SamAccount
    $UPN = $user.UPN

    try {
        New-ADUser `
            -Name $FullName `
            -SamAccountName $SamAccount `
            -UserPrincipalName $UPN `
            -Enabled $true `
            -Path $OUPath

        Write-Output "User $FullName created successfully in davidg-tech environment."
    }
    catch {
        Write-Warning "Failed to create user $FullName: $_"
    }
}

