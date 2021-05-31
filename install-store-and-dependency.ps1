
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
Write-Host "=========================== Any red errors can mostly be ignored, either package is already installed"
Write-Host "=========================== or you have a greater version. If store isn't there run second script"
Write-Host "


"

Read-Host -Prompt "=========================== Press enter to continue"