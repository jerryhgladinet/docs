<#
.SYNOPSIS
    Recurses through the script's directory copying the contents of .vscode_defaults to .vscode
.DESCRIPTION
    Recurses through the script's directory copying the contents of .vscode_defaults to .vscode.
    This is useful for those that wish to use Visual Studio Code for editing the 
    reStructedText projects. There is a reStructedText extension for Visual Studio Code from LeXtudio
    but it requires a \.vscode\settings.json 
.EXAMPLE
    .\Upgrade-CentreStack -ZipPath C:\Users\Administrator\Downloads\upgrade5832.zip
.EXAMPLE
    .\Upgrade-CentreStack -Build 5832
.PARAMETER Force
    If specified, existing .vscode folders will be removed and overwritten with new files
.NOTES 
    Author: Jeff Reed
    Name: New-VSCSettings.ps1
    Created: 2019-05-97
    
    Version History
    2018-09-25  1.0.0   Initial version
#>
Param
(
    [Parameter(Mandatory=$false)]
    [Switch]
    $Force
)

# Determine the directory of the script
$scriptDir = Split-Path $Script:MyInvocation.MyCommand.Path -Parent

# Recurse through the script directory and its children copying the contents of \.vscode_defaults to \.vscode
Get-ChildItem -Path $scriptDir -Recurse | Where-Object {$_.Name -eq '.vscode_defaults' -and $_.PSIsContainer} | ForEach-Object {
    $currentDir = $_
    $parentFullName = $currentDir.Parent.FullName
    $grandParentFullName = (Get-Item -Path $parentFullName).Parent.FullName
    $newDir = Join-Path $parentFullName '.vscode'
    if ( (Test-Path $newDir) -and ($Force -eq $False) ) {
        Write-Output ("Destination directory already exists: '{0}'" -f $newDir)
    }
    else {
        if ($Force -eq $true) {
            # Remove current .vscode if it exists
            if (Test-Path $newDir) {
                Remove-Item $newDir -Force -Recurse
            }
        }
        # Copy all contents of the .vscode_defaults to .vscode
        Copy-Item $currentDir.FullName -Destination $newDir -Recurse -Verbose
        $settingsPath = Join-Path $newDir "settings.json"
        if (Test-Path $settingsPath) {
            $settings = Get-Content -Path $settingsPath | ConvertFrom-Json
            $settings.PSObject.Properties | ForEach-Object {
                if ($null -ne $_.Value) {
                    $_.Value = $_.Value -replace 'c:\\git\\docs', $grandParentFullName
                }
            }
            $settings | ConvertTo-Json | Out-File -FilePath $settingsPath -Encoding utf8 -Verbose
        }
        
    }
}