Add-Type -AssemblyName System.Windows.Forms
Write-Host "Visible mouse jiggler started! Close this window to stop." -ForegroundColor Green

while ($true) {
    # Get current mouse position
    $currentPos = [System.Windows.Forms.Cursor]::Position
    
    # Move mouse 50 pixels to the right
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(($currentPos.X + 50), $currentPos.Y)
    Start-Sleep -Milliseconds 200
    
    # Move mouse back 50 pixels to the left
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(($currentPos.X), $currentPos.Y)
    
    # Wait 10 seconds before moving again (change 10 to whatever you prefer)
    Start-Sleep -Seconds 10
}