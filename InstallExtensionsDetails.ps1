$ServerInstance="DynamicsNAV110"
$AppName = "Extension Details"
$PathName = ".\Peik Bech-Andersen_Extension Details_1.0.0.0.app"
$Version = "1.0.0.0"
Set-ExecutionPolicy RemoteSigned
Import-Module 'C:\Program Files\Microsoft Dynamics NAV\110\Service\NavAdminTool.ps1' 
Import-Module 'C:\Program Files (x86)\Microsoft Dynamics NAV\110\RoleTailored Client\Microsoft.Dynamics.Nav.Apps.Management.psd1'
Get-Command *NAV*
c:
cd \temp
Publish-NAVApp -ServerInstance $ServerInstance -Path $PathName -SkipVerification
install-NAVApp -ServerInstance $ServerInstance -Name $AppName –Version $Version 
Sync-NAVTenant -ServerInstance $ServerInstance -Force
Sync-NAVApp -ServerInstance $ServerInstance -Name $AppName –Version $Version