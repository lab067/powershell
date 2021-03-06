# This one-liner imports a list of UPNs (ie username@domain.com) from a csv file
# and converts the associated mailbox to SharedMailbox from UserMailbox
# Assume you are already connected to your Exchange Online organisation with Powershell with Exchange
# modul imported.

Import-Csv .\file_of_UPNs_with_ident_as_column_header.csv | ForEach-Object {Set-Mailbox $_.ident -Type Shared}


