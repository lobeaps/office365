Install-Module -Name Microsoft.Online.SharePoint.PowerShell -force
Connect-SPOService -Url https://lobedk-admin.sharepoint.com

# https://developer.microsoft.com/en-us/fabric?fabricVer=5#/styles/themegenerator

# Lobe light palette
$themeColors = @{
    "themePrimary" = "#005a84";
    "themeLighterAlt" = "#f0f7fa";
    "themeLighter" = "#005a84";
    "themeLight" = "#99c6da";
    "themeTertiary" = "#4993b6";
    "themeSecondary" = "#126a93";
    "themeDarkAlt" = "#005277";
    "themeDark" = "#004565";
    "themeDarker" = "#00334a";
    "neutralLighterAlt" = "#f8f8f8";
    "neutralLighter" = "#f4f4f4";
    "neutralLight" = "#eaeaea";
    "neutralQuaternaryAlt" = "#dadada";
    "neutralQuaternary" = "#d0d0d0";
    "neutralTertiaryAlt" = "#c8c8c8";
    "neutralTertiary" = "#c2c2c2";
    "neutralSecondary" = "#858585";
    "neutralPrimaryAlt" = "#4b4b4b";
    "neutralPrimary" = "#333333";
    "neutralDark" = "#272727";
    "black" = "#1d1d1d";
    "white" = "#ffffff";
    "primaryBackground" = "#ffffff";
    "primaryText" = "#333333";
    "bodyBackground" = "#ffffff";
    "bodyText" = "#333333";
    "disabledBackground" = "#f4f4f4";
    "disabledText" = "#c8c8c8";
}

Add-SPOTheme -Identity "Lobe V1" -Palette $themeColors -IsInverted $false