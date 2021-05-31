
Write-Host "=========================== Installing Store and AppInstaller only!"

	Add-AppxPackage $PSScriptRoot\Microsoft.DesktopAppInstaller.AppxBundle
	Add-AppxPackage $PSScriptRoot\files\Microsoft.StorePurchaseApp.AppxBundle
	Add-AppxPackage $PSScriptRoot\files\Microsoft.WindowsStore.appxbundle
Write-Host "

"
Write-Host "=========================== All Done! Check start menu for Microsoft Store! -written by LeYuuki"
Write-Host "=========================== Discord: https://discord.gg/tAxvvVC"
Write-Host "


"

Read-Host -Prompt "=========================== Press enter to continue"