function cleaner {
    & python "D:\scripts\cleaner.py" @args
}

function energy {
    & python "D:\scripts\energy.py" @args
}

function steam-lite {
    Stop-Process -Name "steam" -ErrorAction SilentlyContinue
    Start-Sleep -Seconds 2
    & "C:\Program Files (x86)\Steam\Steam.exe" `
        -silent -no-browser -nofriendsui -nointro -no-dwrite
    Write-Host "steam lite" -ForegroundColor Green
}


function After-Gaming {
    powercfg /setactive 381b4222-f694-41f0-9685-ff5bb260df2e
    Remove-Item "$env:LOCALAPPDATA\NVIDIA\DXCache\*" -Force -Recurse -ErrorAction SilentlyContinue
    Remove-Item "$env:LOCALAPPDATA\Temp\*" -Force -Recurse -ErrorAction SilentlyContinue
    Write-Host "Cleanup after gaming done" -ForegroundColor Green
}


# Алиас
Set-Alias stl steam-lite
Set-Alias clean cleaner
Set-Alias en energy
Set-Alias ag After-Gaming
