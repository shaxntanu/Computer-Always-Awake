$WShell = New-Object -ComObject WScript.Shell
while ($true) {
    $WShell.sendkeys("{F15}")
    Start-Sleep -Seconds 60
}