Install-Module -Name Microsoft.Online.SharePoint.PowerShell -force
Connect-SPOService -Url https://lobedk-admin.sharepoint.com

# https://developer.microsoft.com/en-us/fabric?fabricVer=5#/styles/themegenerator
# https://fabricweb.z5.web.core.windows.net/pr-deploy-site/refs/heads/master/theming-designer/index.html


# Fjern nuværende udgave af temaet
Remove-SPOTheme -Name "Lobe V2"


# Lobe light palette
$themeColors = @{
    "themePrimary" = "#005a84";
    "themeLighterAlt" = "#000405"; # Gruppe titel (Moderne Intranet)
    "themeLighter" = "#000e15"; # Menu bar (Startside, Grupper osv.)
    "themeLight" = "#001b28"; 
    "themeTertiary" = "#003650";
    "themeSecondary" = "#005075";
    "themeDarkAlt" = "#0e6891";
    "themeDark" = "#277ba2";
    "themeDarker" = "#5299ba";
    "neutralLighterAlt" = "#f8f8f8";
    "neutralLighter" = "#f4f4f4";
    "neutralLight" = "#eaeaea";
    "neutralQuaternaryAlt" = "#dadada";
    "neutralQuaternary" = "#d0d0d0";
    "neutralTertiaryAlt" = "#c8c8c8";
    "neutralTertiary" = "#a2b9d8";
    "neutralSecondary" = "#597eb1";
    "neutralPrimaryAlt" = "#26518d";
    "neutralPrimary" = "#15407d";
    "neutralDark" = "#10315f";
    "black" = "#0c2446";
    "white" = "#ffffff";
}

Add-SPOTheme -Identity "Lobe V2" -Palette $themeColors -IsInverted $false