####################################################
# SharePoint Online Create Site Collection and Subsite Structure based on English Communication Sites
# Pre-Requisites: PnP Powershell required
# author: Marco Schmucker, Alight
# 2024-02-26
####################################################

#Variables - change Site to deploy into
$SiteURL = "https://alight-admin.sharepoint.com"

#connect to tenant with MFA -UseWebLogin
Connect-PnPOnline -Url $SiteURL -interactive #-UseWebLogin

New-PnPSite -Type CommunicationSite -Title "CT Sales Landing Platform" -Url "https://alight.sharepoint.com/sites/ctsp" -Description "CT Sales Landing Platform" -Lcid 1033

