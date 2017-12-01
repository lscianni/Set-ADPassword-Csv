Import-Module C:\ResetPassword.psm1
#
#
# pass a csv file to the Set-OSCADAccountPassword command 
# REQUIRES ADMIN PRIVS
# Louis Scianni 11/24/2017
 
$CsvFile = $ARGS


if ([string]::IsNullOrEmpty($CsvFile)) {
    Write-Host "must pass a csv file as an argument"
}
elseif ($args.count -gt 1) {
    Write-Host "Only expected one argument"
}

$FileExists = Test-Path $args

if ($FileExists -eq $True) {
    Set-OSCADAccountPassword -path "$CsvFile"
}

elseif ($FileExists -ne $True) {
    Write-Host "File does NOT exists"
}
