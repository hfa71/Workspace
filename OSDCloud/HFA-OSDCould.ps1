Write-Host  -ForegroundColor Yellow "Lanzando el OSD Personalizado de Hermann ..."
cls
Write-Host "================ Menu Principal =====================" -ForegroundColor Yellow
Write-Host "===============  Aerocenter Chile ===================" -ForegroundColor Yellow
Write-Host "=================== @hermannf =======================" -ForegroundColor Yellow
Write-Host "=====================================================" -ForegroundColor Yellow
Write-Host "1: Zero-Touch Win10 21H1 | English | Professional" -ForegroundColor Yellow
Write-Host "2: Zero-Touch Win10 21H1 | Spanish | Professional" -ForegroundColor Yellow
Write-Host "3: Yo lo seleccionalre Manual"-ForegroundColor Yellow
Write-Host "4: Salir`n"-ForegroundColor Yellow
$input = Read-Host "Seleccionar"

Write-Host  -ForegroundColor Yellow "Cargando OSDCloud..."

Import-Module OSD -Force
Install-Module OSD -Force

switch ($input)
{
    '1' { Start-OSDCloud -OSLanguage en-us -OSBuild 21H1 -OSEdition Professional -ZTI -EnableNetFX } 
    '2' { Start-OSDCloud -OSLanguage es-mx -OSBuild 21H1 -OSEdition Professional -ZTI -EnableNetFX } 
    '3' { Start-OSDCloud	} 
    '4' { Exit		}
}

wpeutil reboot
