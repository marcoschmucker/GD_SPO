
Connect-PnPOnline -Url "https://alight.sharepoint.com/sites/GD-CT-SalesPortal" -interactive

Write-Host "Exporting termsets to c:\temp\..." -ForegroundColor Yellow


$termgroup = Get-PnPTermGroup -Identity "GD CT Sales"
Export-PnPTermGroupToXml -Identity $termgroup -Out "c:\temp\ctslp_termgroup.xml"

Write-Host "Exporting termsets to c:\temp\...done" -ForegroundColor Green