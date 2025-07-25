Extension/FlipHorizontal.RoughDraft.Extension.ps1
-------------------------------------------------

### Synopsis
Flips video horizontally

---

### Description

Flips video horizontally, using the hflip filter.

---

### Related Links
* [https://ffmpeg.org/ffmpeg-filters.html#hflip](https://ffmpeg.org/ffmpeg-filters.html#hflip)

---

### Examples
> EXAMPLE 1

```PowerShell
Edit-Media -InputPath .\TestSource.gif -FlipHorizontal
```

---

### Parameters
#### **FlipHorizontal**

|Type      |Required|Position|PipelineInput|Aliases                   |
|----------|--------|--------|-------------|--------------------------|
|`[Switch]`|true    |named   |false        |FlipHorizontally<br/>hflip|

---

### Syntax
```PowerShell
Extension/FlipHorizontal.RoughDraft.Extension.ps1 -FlipHorizontal [<CommonParameters>]
```
