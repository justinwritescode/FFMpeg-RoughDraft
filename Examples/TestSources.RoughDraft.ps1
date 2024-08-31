$OutputDirectory = $PSScriptRoot

Push-Location $OutputDirectory

New-Media -TestSource rgbtestsrc -OutputPath "RGB.TestSource.png" -Resolution 1920x1080
New-Media -TestSource pal100bars -OutputPath "PAL100.TestSource.png" -Resolution 1920x1080
New-Media -TestSource pal75bars -OutputPath "PAL75.TestSource.png" -Resolution 1920x1080
New-Media -TestSource smtpebars -OutputPath "SMPTE.TestSource.png" -Resolution 1920x1080

Pop-Location