Write-Host "
=========================== You've opened...
                                                                                                                    
  ______                ___                      ______ _______ 
 / _____)              / __)                    (_____ (_______)
( (____  _   _  ____ _| |__ _____  ____ _____    _____) )  _    
 \____ \| | | |/ ___|_   __|____ |/ ___) ___ |  |  __  /  | |   
 _____) ) |_| | |     | |  / ___ ( (___| ____|  | |  \ \  | |   
(______/|____/|_|     |_|  \_____|\____)_____)  |_|   |_| |_|   
                                                                
  ______                          _                        _ _  
 / _____) _                      (_)             _        | | | 
( (____ _| |_ ___   ____ _____    _ ____   ___ _| |_ _____| | | 
 \____ (_   _) _ \ / ___) ___ |  | |  _ \ /___|_   _|____ | | | 
 _____) )| || |_| | |   | ____|  | | | | |___ | | |_/ ___ | | | 
(______/  \__)___/|_|   |_____)  |_|_| |_(___/   \__)_____|\_)_)
                                                                
                                                   
=========================== Store installation script written by LeYuuki
=========================== Version 1.0.0" 

Start-Sleep -s 3
Read-Host -Prompt "=========================== Press enter to continue"

Write-Host "`r$frame" -NoNewline
[Console]::CursorVisible = $false

$animation = @"
 _                 _ _             
| |               | (_)            
| | ___  _____  __| |_ ____   ____ 
| |/ _ \(____ |/ _  | |  _ \ / _  |
| | |_| / ___ ( (_| | | | | ( (_| |
 \_)___/\_____|\____|_|_| |_|\___ |
                            (_____|
#
 _                 _ _                  
| |               | (_)                 
| | ___  _____  __| |_ ____   ____      
| |/ _ \(____ |/ _  | |  _ \ / _  |     
| | |_| / ___ ( (_| | | | | ( (_| |   _ 
 \_)___/\_____|\____|_|_| |_|\___ |  (_)
                            (_____|    
#
 _                 _ _                       
| |               | (_)                      
| | ___  _____  __| |_ ____   ____           
| |/ _ \(____ |/ _  | |  _ \ / _  |          
| | |_| / ___ ( (_| | | | | ( (_| |   _    _ 
 \_)___/\_____|\____|_|_| |_|\___ |  (_)  (_)
                            (_____|           
#
 _                 _ _                            
| |               | (_)                           
| | ___  _____  __| |_ ____   ____                
| |/ _ \(____ |/ _  | |  _ \ / _  |               
| | |_| / ___ ( (_| | | | | ( (_| |   _    _    _ 
 \_)___/\_____|\____|_|_| |_|\___ |  (_)  (_)  (_)
                            (_____|                                                                     
"@

$frames = $animation.Split("#").Trim()

$animationLoopNumber = 5 # number of times to loop animation

$animationSpeed = 250 # time in milliseconds to show each frame

$i = 0

do {

    foreach ($frame in $frames) {

        Clear-Host
        
        Write-Output "$frame`n`n`n"
    
        Start-Sleep -Milliseconds $animationSpeed
    }

    $i++
    
} until ($i -eq $animationLoopNumber)

Write-Host "=========================== Preparations complete"
Start-Sleep -s 2
Write-Host "=========================== Installing NET Framework" 

	Add-AppxPackage $PSScriptRoot\files\Microsoft.NET.Native.Framework.1.6_1.6.27413.0.Appx
	Add-AppxPackage $PSScriptRoot\files\Microsoft.NET.Native.Framework.1.7_1.7.27413.0.Appx
	Add-AppxPackage $PSScriptRoot\files\Microsoft.NET.Native.Framework.2.2_2.2.27912.0.Appx
	Add-AppxPackage $PSScriptRoot\files\Microsoft.NET.Native.Framework.1.7.appx
	Add-AppxPackage $PSScriptRoot\files\Microsoft.NET.Native.Framework.1.3_1.3.24211.0.appx

Write-Host "=========================== Installing NET Runtime"

	Add-AppxPackage $PSScriptRoot\files\Microsoft.NET.Native.Runtime.1.4_1.4.24201.0.Appx
	Add-AppxPackage $PSScriptRoot\files\Microsoft.NET.Native.Runtime.1.6_1.6.24903.0.Appx
	Add-AppxPackage $PSScriptRoot\files\Microsoft.NET.Native.Runtime.1.7_1.7.25531.0.Appx
	Add-AppxPackage $PSScriptRoot\files\Microsoft.NET.Native.Runtime.2.2_2.2.27328.0.Appx
	Add-AppxPackage $PSScriptRoot\files\Microsoft.NET.Native.Runtime.1.7.appx
	Add-AppxPackage $PSScriptRoot\files\Microsoft.NET.Native.Runtime.1.3_1.3.23901.0.Appx

Write-Host "=========================== Installing VCLibs"

	Add-AppxPackage $PSScriptRoot\files\Microsoft.VCLibs.140.00.Appx
	Add-AppxPackage $PSScriptRoot\files\Microsoft.VCLibs.ARM.14.00.appx
	Add-AppxPackage $PSScriptRoot\files\Microsoft.VCLibs.120.00.Universal_12.0.30501.0.Appx
	Add-AppxPackage $PSScriptRoot\files\Microsoft.VCLibs.120.00_12.0.21005.1.Appx

Write-Host "=========================== Installing extras"

	Add-AppxPackage $PSScriptRoot\files\Microsoft.Advertising.Xaml_10.1811.1.0.Appx
	Add-AppxPackage $PSScriptRoot\files\Microsoft.Services.Store.Engagement_10.0.19011.0.Appx
	Add-AppxPackage $PSScriptRoot\files\Microsoft.UI.Xaml.2.0_2.1810.18004.0.Appx

Write-Host "=========================== Installing Store and AppInstaller"

	Add-AppxPackage $PSScriptRoot\files\Microsoft.DesktopAppInstaller.AppxBundle
	Add-AppxPackage $PSScriptRoot\files\Microsoft.StorePurchaseApp.AppxBundle
	Add-AppxPackage $PSScriptRoot\files\Microsoft.WindowsStore.appxbundle
	
Write-Host "

"
Write-Host "=========================== All Done! Check start menu for Microsoft Store! -written by LeYuuki"
Write-Host "=========================== Discord: https://discord.gg/tAxvvVC"
Write-Host "

"
	Start-Sleep -s 3
Read-Host -Prompt "=========================== Press enter to exit"
