$OutputDirectory = $PSScriptRoot

Push-Location $OutputDirectory

New-Media -TestSource rgbtestsrc -OutputPath "RGB_Test_Source.png" -Width 1920 -Height 1080 
New-Media -TestSource pal100bars -OutputPath "PAL_100_Bars_Test_Source.png" -Width 1920 -Height 1080
New-Media -TestSource pal75bars -OutputPath "PAL_75_Bars_Test_Source.png" -Width 1920 -Height 1080
New-Media -TestSource smtpebars -OutputPath "SMPTE_Bars_Test_Source.png" -Width 1920 -Height 1080

Pop-Location