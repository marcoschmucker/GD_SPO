####################################################
# SharePoint Online Export Termsets
# Pre-Requisites: PnP Powershell required
# author: Marco Schmucker, Alight
# 2024-02-29
####################################################

Connect-PnPOnline -Url "https://alight.sharepoint.com/sites/GD-CT-SalesPortal" -interactive

#Export-PnPTermGroupToXml -Out "c:\temp\ctslp_termgroup_export.xml" -Identity "GD CT Sales"

Write-Host "Exporting termsets to c:\temp\..." -ForegroundColor Yellow
Export-PnPTaxonomy -Path "c:\temp\ctslp_termset_export_companies.txt" -TermSetId b8ad6f3e-54d1-4ba8-a3cf-709f39dd1369 -Lcid 1033 -IncludeID

Export-PnPTaxonomy -Path "c:\temp\ctslp_termset_export_Competitors.txt" -TermSetId a4be12ce-dacf-4caf-bc0c-6ecf60be944d -Lcid 1033 -IncludeID

Export-PnPTaxonomy -Path "c:\temp\ctslp_termset_export_Departments.txt" -TermSetId f690d54c-95e2-4f3b-8e86-42395228d632 -Lcid 1033 -IncludeID

Export-PnPTaxonomy -Path "c:\temp\ctslp_termset_export_DocumentType.txt" -TermSetId 02970c28-4ea8-439e-9779-b194644cda5e -Lcid 1033 -IncludeID

Export-PnPTaxonomy -Path "c:\temp\ctslp_termset_export_KeySellingPoints.txt" -TermSetId 2d6a7cee-8552-4818-ac4a-295da67a60a8 -Lcid 1033 -IncludeID

Export-PnPTaxonomy -Path "c:\temp\ctslp_termset_export_ProductCategories.txt" -TermSetId 6280a950-c244-4d0e-849b-9c429364b292 -Lcid 1033 -IncludeID

Export-PnPTaxonomy -Path "c:\temp\ctslp_termset_export_Products.txt" -TermSetId ae709740-0873-4c41-8105-102cb27633cb -Lcid 1033 -IncludeID

Export-PnPTaxonomy -Path "c:\temp\ctslp_termset_export_Projects.txt" -TermSetId 1a110540-9de3-4063-8b3f-c1f581ed09f6 -Lcid 1033 -IncludeID

Export-PnPTaxonomy -Path "c:\temp\ctslp_termset_export_Regions.txt" -TermSetId 3d5a249b-2bbf-4a14-aa3c-4cca63c9b1f0 -Lcid 1033 -IncludeID

Export-PnPTaxonomy -Path "c:\temp\ctslp_termset_export_SalesSkillsandMethods.txt" -TermSetId 47934f9f-29a0-4edc-9647-3df6e69d1359 -Lcid 1033 -IncludeID

Export-PnPTaxonomy -Path "c:\temp\ctslp_termset_export_Solutions.txt" -TermSetId 57289e4f-33e7-4fa9-bfb9-d7d0c63d5e49 -Lcid 1033 -IncludeID

Export-PnPTaxonomy -Path "c:\temp\ctslp_termset_export_Topics.txt" -TermSetId d74183c5-abeb-4e9f-b07c-31d1ea033846 -Lcid 1033 -IncludeID

Write-Host "Termsets exported to c:\temp\" -ForegroundColor Green
