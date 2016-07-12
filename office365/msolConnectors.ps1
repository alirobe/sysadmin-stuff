# Based on http://msdn.microsoft.com/en-us/library/dn568015.aspx

# Run me elevated, and w/prerequisites as listed in article: 
#   http://go.microsoft.com/fwlink/p/?LinkId=286152
#   http://go.microsoft.com/fwlink/p/?linkid=236297 (64b)
#   http://go.microsoft.com/fwlink/p/?LinkId=255251
#   http://go.microsoft.com/fwlink/p/?LinkId=532439
#   Don't forget the Session Killers section when done.

# Establish Tenant Info
    Import-Module MsOnline
    $tenant = read-host "tenant ID - e.g. https://(THIS).sharepoint.com:"
    read-host "Next step will ask for 365 user/pass"
    $cred = get-credential

# SharePoint Connection
    Import-Module Microsoft.Online.SharePoint.PowerShell
    $spAdminUrl = "https://" + $tenant + "-admin.sharepoint.com"
    Connect-SPOService -url $spAdminUrl -credential $cred
    get-sposite
    Connect-MsolService -credential $cred

# Skype for Business Online Connection
    # note: A warning about increasing the WSMan NetworkDelayms value is expected the first time you connect and should be ignored.
    Import-Module SkypeOnlineConnector
    $sfboSession = New-CsOnlineSession -Credential $credential
    Import-PSSession $sfboSession

# Exchange Connection
    $exchangeSession = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri "https://outlook.office365.com/powershell-liveid/" -Credential $credential -Authentication "Basic" -AllowRedirection
    Import-PSSession $exchangeSession -DisableNameChecking

# Security and Compliance Center
    $ccSession = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://ps.compliance.protection.outlook.com/powershell-liveid/ -Credential $credential -Authentication Basic -AllowRedirection
    # prefix means: Get-RoleGroup becomes Get-ccRoleGroup
    Import-PSSession $ccSession -Prefix cc

# Session Killers 
    Disconnect-SPOService
    Remove-PSSession $sfboSession
    Remove-PSSession $exchangeSession
    Remove-PSSession $ccSession