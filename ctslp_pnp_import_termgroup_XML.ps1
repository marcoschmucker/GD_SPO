####################################################
# SharePoint Online Import Termsets into Termgroup CTSLP
# Pre-Requisites: PnP Powershell required
# author: Marco Schmucker, Alight
# 2024-02-29
####################################################

Connect-PnPOnline -Url "https://alight.sharepoint.com/sites/GD-CT-SalesPortal" -interactive

Write-Host "Creating Termgroup CTSLP..." -ForegroundColor Yellow

New-PnPTermGroup -GroupName "CTSLP" -Description "Terms for CT Sales Landing Platform" -Id "a882df2e-6a3c-4cb3-8e27-b7268ca32129"

Write-Host "Importing termsets to C:\Temp\..." -ForegroundColor Yellow

Import-PnPTermGroupFromXml -Path "c:\temp\ctslp_termgroup.xml"

Write-Host "Termsets imported from C:\Temp\ into Termgroup CTSLP" -ForegroundColor Green
