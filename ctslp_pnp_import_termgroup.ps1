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

Import-PnPTermSet -GroupName "CTSLP" -Path "C:\Temp\ctslp_termset_export_companies.txt" -SynchronizeDeletions -IsOpen $false

Import-PnPTermSet -GroupName "CTSLP" -Path "C:\Temp\ctslp_termset_export_Competitors.txt" -SynchronizeDeletions -IsOpen $false

Import-PnPTermSet -GroupName "CTSLP" -Path "C:\Temp\ctslp_termset_export_Departments.txt" -SynchronizeDeletions -IsOpen $false

Import-PnPTermSet -GroupName "CTSLP" -Path "C:\Temp\ctslp_termset_export_DocumentType.txt" -SynchronizeDeletions -IsOpen $false

Import-PnPTermSet -GroupName "CTSLP" -Path "C:\Temp\ctslp_termset_export_KeySellingPoints.txt" -SynchronizeDeletions -IsOpen $false

Import-PnPTermSet -GroupName "CTSLP" -Path "C:\Temp\ctslp_termset_export_ProductCategories.txt" -SynchronizeDeletions -IsOpen $false

Import-PnPTermSet -GroupName "CTSLP" -Path "C:\Temp\ctslp_termset_export_Products.txt" -SynchronizeDeletions -IsOpen $false

Import-PnPTermSet -GroupName "CTSLP" -Path "C:\Temp\ctslp_termset_export_Projects.txt" -SynchronizeDeletions -IsOpen $false

Import-PnPTermSet -GroupName "CTSLP" -Path "C:\Temp\ctslp_termset_export_Regions.txt" -SynchronizeDeletions -IsOpen $false -IsOpen $false

Import-PnPTermSet -GroupName "CTSLP" -Path "C:\Temp\ctslp_termset_export_SalesSkillsandMethods.xml" -SynchronizeDeletions  -IsOpen $false

Import-PnPTermSet -GroupName "CTSLP" -Path "C:\Temp\ctslp_termset_export_Solutions.xml" -SynchronizeDeletions -IsOpen $false

Import-PnPTermSet -GroupName "CTSLP" -Path "C:\Temp\ctslp_termset_export_Topics.xml" -SynchronizeDeletions

Write-Host "Termsets imported from C:\Temp\ into Termgroup CTSLP" -ForegroundColor Green
