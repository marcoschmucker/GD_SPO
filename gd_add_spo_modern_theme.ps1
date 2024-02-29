
# Sites
$adminSiteUrl ="https://alight-admin.sharepoint.com/"

$themeName = "G+D Modern Theme"
#$cred = Get-Credential
Connect-SPOService $adminSiteUrl

$builder =@{
    "themePrimary" = "#040066";
    "themeLighterAlt" = "#efeff9";
    "themeLighter" = "#c3c2e7";
    "themeLight" = "#9492d1";
    "themeTertiary" = "#4541a3";
    "themeSecondary" = "#120e78";
    "themeDarkAlt" = "#03005c";
    "themeDark" = "#03004e";
    "themeDarker" = "#020039";
    "neutralLighterAlt" = "#faf9f8";
    "neutralLighter" = "#f3f2f1";
    "neutralLight" = "#edebe9";
    "neutralQuaternaryAlt" = "#e1dfdd";
    "neutralQuaternary" = "#d0d0d0";
    "neutralTertiaryAlt" = "#c8c6c4";
    "neutralTertiary" = "#a19f9d";
    "neutralSecondary" = "#605e5c";
    "neutralSecondaryAlt" = "#8a8886";
    "neutralPrimaryAlt" = "#3b3a39";
    "neutralPrimary" = "#323130";
    "neutralDark" = "#201f1e";
    "black" = "#000000";
    "white" = "#ffffff";
    }

# For an existing theme to get updated, it needs to be removed and re-added
try {
    if ((Get-SPOTheme -Name $themeName) -ne $null) {
        Remove-SPOTheme -name $themeName
    }
}
catch {
    # first time adding theme
}
$theme = New-Object "System.Collections.Generic.Dictionary``2[System.String,System.String]"
$builder.Keys | %{$theme.Add($_, $builder[$_])}
Add-SPOTheme -Name $themeName -Palette $theme -IsInverted:$false