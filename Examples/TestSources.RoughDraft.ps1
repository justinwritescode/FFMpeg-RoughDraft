$testSourceOutputPath = New-Item -ItemType Directory -Path .\TestSources

@(
    New-Media -TestSource rgbtestsrc -OutputPath (
        Join-Path -Path $testSourceOutputPath -ChildPath "RGB_Test_Source.png"
    ) -Width 1920 -Height 1080 
    New-Media -TestSource pal100bars -OutputPath (
        Join-Path -Path $testSourceOutputPath -ChildPath "PAL_100_Bars_Test_Source.png"
    ) -Width 1920 -Height 1080
    New-Media -TestSource pal75bars -OutputPath (
        Join-Path -Path $testSourceOutputPath -ChildPath "PAL_75_Bars_Test_Source.png"
    ) -Width 1920 -Height 1080
    New-Media -TestSource smtpebars -OutputPath (
        Join-Path -Path $testSourceOutputPath -ChildPath "SMPTE_Bars_Test_Source.png"
    ) -Width 1920 -Height 1080
) | 
    Add-Member NoteProperty CommitMessage "Adding Test Sources [skip ci]" -Force -PassThru
    