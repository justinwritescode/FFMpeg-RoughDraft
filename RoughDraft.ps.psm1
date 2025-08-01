﻿[Diagnostics.CodeAnalysis.SuppressMessageAttribute("Test-ForSlowScript", "", Justification="Slightly slow scripts will always be faster than media processing.")]
param()
$CommandsPath = Join-Path $PSScriptRoot Commands
[include('*-*.ps1')]$CommandsPath

Set-Alias ConvertTo-Gif Convert-Media

. $psScriptRoot\Get-RoughDraftExtension.ps1

. $psScriptRoot\RoughDraft.Irregular.ps1

#region Import Parts

# Parts are simple .ps1 files beneath a /Parts directory that can be used throughout the module.
$partsDirectory = $( # Because we want to be case-insensitive, and because it's fast
    foreach ($dir in [IO.Directory]::GetDirectories($psScriptRoot)) { # [IO.Directory]::GetDirectories()
        if ($dir -imatch "\$([IO.Path]::DirectorySeparatorChar)Parts$") { # and some Regex
            [IO.DirectoryInfo]$dir;break # to find our parts directory.
        }
    })

if ($partsDirectory) { # If we have parts directory
    foreach ($partFile in $partsDirectory.EnumerateFileSystemInfos()) { # enumerate all of the files.
        if ($partFile.Extension -ne '.ps1') { continue } # Skip anything that's not a PowerShell script.
        $partName = # Get the name of the script.
            $partFile.Name.Substring(0, $partFile.Name.Length - $partFile.Extension.Length)
        $ExecutionContext.SessionState.PSVariable.Set( # Set a variable
            $partName, # named the script that points to the script (e.g. $foo = gcm .\Parts\foo.ps1)
            $ExecutionContext.SessionState.InvokeCommand.GetCommand($partFile.Fullname, 'ExternalScript')
        )
    }
}
#endregion Import Parts

#region Export Myself

# Get my module
$MyModule = $MyInvocation.MyCommand.ScriptBlock.Module
# and decorate it with my name (this enables extensibility)
$MyModule.pstypenames.insert(0,$MyModule.Name)
# and set a variable with my name that points to me.
$ExecutionContext.SessionState.PSVariable.Set($MyModule.Name, $myModule)
#endregion Export Myself

#region Mount Myself
# Mount myself as a drive
$newDriveSplat = @{PSProvider='FileSystem';ErrorAction='Ignore';Scope='Global'}
New-PSDrive -Name $MyModule.Name -Root ($MyModule | Split-Path) @newDriveSplat
#endregion Mount Myself

Export-ModuleMember -Function *-* -Alias *
