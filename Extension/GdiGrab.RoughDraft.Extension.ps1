<#
.Synopsis
    GDIGrab Extension
.Description
    The GDIGrab extension lets you use GDI input devices
.EXAMPLE
    Show-Media -GDIGrab # Shows a recursive grab of the current desktop
.LINK
    https://ffmpeg.org/ffmpeg-devices.html#gdigrab
#>
[Management.Automation.Cmdlet("Receive","Media")]
[Management.Automation.Cmdlet("Send","Media")]
[Management.Automation.Cmdlet("Show","Media")]
param(
# If set, will use `gdigrab` as the input type
[Parameter(Mandatory)]
[Alias('gdi')]
[switch]
$GdiGrab,

[string]
$GdiDevice = "desktop",

[string]
$GdiWindowTitle
)

if (-not $GdiDevice) { $GdiDevice = "desktop" }

$deviceString = @(
    if ($GdiWindowTitle) {"title=$GdiWindowTitle"}
    elseif ($GdiDevice) { $GdiDevice } 
    else {"desktop"}    
) -join ':'

'-f'
'gdigrab'
'-i'
$deviceString