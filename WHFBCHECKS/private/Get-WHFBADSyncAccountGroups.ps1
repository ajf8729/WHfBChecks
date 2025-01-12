<#
.SYNOPSIS

This function will get the AD group membership of a User account.
#>
function Get-WHFBADSyncAccountGroups {
    [CmdletBinding()]
    param (
        #The sAMAccountName for the user which you want to check
        [Parameter()]
        [string]
        $username
    )
    Get-ADPrincipalGroupMembership -Identity $username -Server (Get-ADDomain -Current LocalComputer).PDCEmulator | Select-Object Name
}