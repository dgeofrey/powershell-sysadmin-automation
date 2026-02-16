# Bulk User CSV Reference
Author: David Geofrey  
GitHub: https://github.com/dgeofrey

## Overview
The `users.csv` file is designed to provide structured input for bulk Active Directory user creation.  
Each row represents a single user with the following columns:

| Column       | Description                                                                 |
|--------------|-----------------------------------------------------------------------------|
| FirstName    | User’s first name, used to generate the full display name                  |
| LastName     | User’s last name, used to generate the full display name                   |
| SamAccount   | Active Directory `sAMAccountName` for the user (unique login ID)           |
| UPN          | User Principal Name (email-style login), e.g., `username@davidg-tech.local` |

### Example CSV

```csv
FirstName,LastName,SamAccount,UPN
David,Geofrey,dgeofrey,dgeofrey@davidg-tech.local
Test1,User1,tuser1,test1user1@davidg-tech.local
Test2,Uesr2,tuser2,test2user2@davidg-tech.local

