Extension/GdiGrab.RoughDraft.Extension.ps1
------------------------------------------

### Synopsis
GDIGrab Extension

---

### Description

The GDIGrab extension lets you use GDI input devices

---

### Related Links
* [https://ffmpeg.org/ffmpeg-devices.html#gdigrab](https://ffmpeg.org/ffmpeg-devices.html#gdigrab)

---

### Examples
> EXAMPLE 1

```PowerShell
Show-Media -GDIGrab # Shows a recursive grab of the current desktop
```

---

### Parameters
#### **GdiGrab**
If set, will use `gdigrab` as the input type

|Type      |Required|Position|PipelineInput|Aliases|
|----------|--------|--------|-------------|-------|
|`[Switch]`|true    |named   |false        |gdi    |

#### **GdiDevice**

|Type      |Required|Position|PipelineInput|
|----------|--------|--------|-------------|
|`[String]`|false   |1       |false        |

#### **GdiWindowTitle**

|Type      |Required|Position|PipelineInput|
|----------|--------|--------|-------------|
|`[String]`|false   |2       |false        |

---

### Syntax
```PowerShell
Extension/GdiGrab.RoughDraft.Extension.ps1 -GdiGrab [[-GdiDevice] <String>] [[-GdiWindowTitle] <String>] [<CommonParameters>]
```
