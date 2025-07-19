@{
    CompanyName='Start-Automating'
    ModuleVersion='0.4.1'
    ModuleToProcess='RoughDraft.psm1'
    GUID='c192ebbf-57a3-493e-bc82-da7553038794'
    Description='A Fun PowerShell Module for Multimedia'
    Copyright='2011-2025 Start-Automating'
    Author='James Brundage'
    FormatsToProcess  = 'RoughDraft.format.ps1xml'
    TypesToProcess = 'RoughDraft.types.ps1xml'
    PrivateData = @{
        PSData = @{
            Tags = 'Media', 'Multimedia','Audio', 'Video', 'FFMpeg', 'mp3','mp4','jpg','png'
            ProjectURI = 'https://github.com/StartAutomating/RoughDraft'
            LicenseURI = 'https://github.com/StartAutomating/RoughDraft/blob/main/LICENSE'
            IconURI    = 'https://github.com/StartAutomating/RoughDraft/blob/main/Assets/RoughDraft.png'
            ReleaseNotes = @'
> Like It? [Star It](https://github.com/StartAutomating/RoughDraft)
> Love It? [Support It](https://github.com/sponsors/StartAutomating)

## 0.4.1

* RoughDraft in Docker
  * Added Dockerfile ( #251 )
  * Publishing to https://ghcr.io/startautomating/roughdraft ( #252 )
    * `Container.init.ps1` initializes the container ( #277 )
    * `Container.start.ps1` is the entry point ( #278 )
    * `Container.stop.ps1` is the exit point ( #279 )
  * RoughDraft Docker on Kali ( #311 )

* Massive Metadata improvements!
  * Get-Media now stores Metadata within '.Metadata' ( #224 )
  * Media Formatting ( #30 )
  * Gettable / Settable properties on every `Get-Media` result:
    * RoughDraft.Media.AspectRatio ( #217 )
    * RoughDraft.Media.PixelFormat ( #218 )
    * RoughDraft.Media.Video/AudioBitrate ( #216, #219 )
    * RoughDraft.Media.FilePath/FileName ( #220, #221 )
    * RoughDraft.Media.get_MediaType ( #212 )
  * Media metadata can be set with script properties
    * RoughDraft.Media.get/set_Artist ( #249 )
    * RoughDraft.Media.get/set_Date ( #271 )
    * RoughDraft.Media.get/set_Year ( #248 )
    * RoughDraft.Media.get/set_Track ( #247 )
    * RoughDraft.Media.get/set_Synopsis ( #246 )
    * RoughDraft.Media.get/set_Subtitle ( #245 )
    * RoughDraft.Media.get/set_Publisher/Show ( #243, #244 )
    * RoughDraft.Media.get/set_Network/Producer ( #241, #242 )
    * RoughDraft.Media.get/set_Mood ( #240 )
    * RoughDraft.Media.get/set_Location ( Fixes #260 )
    * RoughDraft.Media.get/set_Lyric ( #239 )
    * RoughDraft.Media.get/set_InitialKey ( #238 )
    * RoughDraft.Media.get/set_Genre/Grouping ( #236, #237 )
    * RoughDraft.Media.get/set_EpisodeId ( #235 )
    * RoughDraft.Media.get/set_Disc ( #234 )
    * RoughDraft.Media.get/set_Description ( #233 )
    * RoughDraft.Media.get/set_CreationTime ( #232 )
    * RoughDraft.Media.get/set_Comment/Composer ( #229, #230 )
    * RoughDraft.Media.get/set_Copyright ( #231 )
    * RoughDraft.Media.get/set_Comment ( #229 )
    * RoughDraft.Media.get/set_BPM ( #228 )
    * RoughDraft.Media.get/set_Album/AlbumArtist ( #226, #227 )
    * RoughDraft.Media.get/set_Title ( #225 )

* Edit-Media -Offset ( #299 )
* Convert/Edit/New-Media -FrameCount (#303)

* New Commands:
  * Repair-Media ( #208 )
  * Mount-RoughDraft ( #288 )
  * Dismount-RoughDraft ( #289 )

* New Extensions:
  * ChromaHold ( #190 )
  * Crossfade (#18)
  * ExtractSubtitle (#186)
  * FixPlaylistPath ( #209 )
  * GdiGrab ( #313 )
  * GifPalette (#71)  
  * NoLogo (#17)
  * OffsetAudio ( #297 )
  * OffsetVideo ( #298 )
  * PseudoColor ( #305 )  
  * ShufflePixels ( #304 )
  * ShufflePlanes ( #306 )
  * SplitEqually ( #197 )  
  * SwapRect ( #191 )
  * Vibrance ( #192 )
  
* Fixes / Improvements
  * Fixing -VideoCodec (#189)
  * YouTube downloader
    * Swapping YouTube Downloader to `yt-dlp` ( #196 )
    * Adding additional options (#257)
  * Join-Media should not always transcode ( #195 )
  * Quoting Fixes
    * Set-Media quoting ( #222 )
    * Set-Media -AlbumArt quoting ( #255 )
    * Mirror Extension Overquoting ( #301 )
    * Pixelate Extension Overquoting ( #300 )
    * Rotate filter quoting fix ( #259 )
  * Get-Media -VolumeLevel ( #254 )
  * Edit-Media removing default -PixelFormat ( Fixes #302 )
  * Removing pixel format from visualizers ( #312 )
  * Workflow fixes
    * RoughDraft PublishTestResults workflow fix ( #310 )
  
* Module Features:
  * Mounting `RoughDraft:` ( #201 )
  * Exporting `$RoughDraft` ( #202 )
* Organization (#203, #204, #205, #206)
  * Moving Build definitions into /Build ( #204 )
  * Moving Functions into /Commands ( #205 )
  * Moving Formatting and Types into /Types (#206)
* Community Standards
  * Added `CODE_OF_CONDUCT.md` (#293)
  * Added `CONTRIBUTING.md` (#294)
  * Added `SECURITY.md` (#295)
* Action Improvements ( #282, #283, #284 )
  * RoughDraft action no longer uses set-output ( #281 )
  * RoughDraft action summarization ( #282 )
  * RoughDraft action refactored into internal functions ( #283 )
  * Using actorID in checkins (#284)
  * Supporting -InstallModule (#285)

---

Additional Changes in [CHANGELOG](https://github.com/StartAutomating/RoughDraft/blob/main/CHANGELOG.md)
'@
        }
        Taglines = @(
            'A Fun PowerShell Module for Multimedia',
            'FFMpeg made easier with PowerShell',
            'Manipulate Audio and Video with PowerShell',
            'PowerShell and FFMpeg, together at last'
        )
        
    }
}
