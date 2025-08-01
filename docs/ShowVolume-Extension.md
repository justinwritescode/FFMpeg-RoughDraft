Extension/ShowVolume.RoughDraft.Extension.ps1
---------------------------------------------

### Synopsis
Shows the volume of an audio stream.

---

### Description

Shows the volume of an audio stream, using the [showvolume filter](https://ffmpeg.org/ffmpeg-filters.html#showvolume)

---

### Related Links
* [https://ffmpeg.org/ffmpeg-filters.html#showvolume](https://ffmpeg.org/ffmpeg-filters.html#showvolume)

---

### Examples
> EXAMPLE 1

```PowerShell
Show-Media -InputPath .\a.mp3 -ShowVolume
```
> EXAMPLE 2

```PowerShell
Edit-Media -InputPath .\a.mp3 -ShowVolume -OutputPath .\a.mp4
```

---

### Parameters
#### **ShowVolume**
If set, will show volume

|Type      |Required|Position|PipelineInput|
|----------|--------|--------|-------------|
|`[Switch]`|true    |named   |false        |

#### **ShowVolumeBorderWidth**
Set border width, allowed range is [0, 5]. Default is 1.

|Type     |Required|Position|PipelineInput|Aliases     |
|---------|--------|--------|-------------|------------|
|`[Int32]`|false   |1       |false        |showvolume_b|

#### **ShowVolumeChannelWidth**
Set channel width, allowed range is [80, 8192]. Default is 400

|Type     |Required|Position|PipelineInput|Aliases     |
|---------|--------|--------|-------------|------------|
|`[Int32]`|false   |2       |false        |showvolume_w|

#### **ShowVolumeChannelHeight**
Set channel height, allowed range is [1, 900]. Default is 20.

|Type     |Required|Position|PipelineInput|Aliases     |
|---------|--------|--------|-------------|------------|
|`[Int32]`|false   |3       |false        |showvolume_h|

#### **ShowVolumeChannelFade**
Set fade, allowed range is [0, 1]. Default is 0.95.

|Type      |Required|Position|PipelineInput|Aliases     |
|----------|--------|--------|-------------|------------|
|`[Double]`|false   |4       |false        |showvolume_f|

#### **ShowVolumeColorExpression**
Set volume color expression.
The expression can use the following variables:
VOLUME
Current max volume of channel in dB.
PEAK
Current peak.
CHANNEL
Current channel number, starting from 0.

|Type      |Required|Position|PipelineInput|Aliases     |
|----------|--------|--------|-------------|------------|
|`[String]`|false   |5       |false        |showvolume_c|

#### **ShowVolumeOrientation**
Set orientation, can be horizontal: h or vertical: v, default is h.
Valid Values:

* v
* h
* horizontal
* vertical

|Type      |Required|Position|PipelineInput|Aliases     |
|----------|--------|--------|-------------|------------|
|`[String]`|false   |6       |false        |showvolume_o|

#### **ShowVolumeMode**
Set metering mode, can be peak: p or rms: r, default is p.
Valid Values:

* p
* r
* peak
* rms

|Type      |Required|Position|PipelineInput|Aliases     |
|----------|--------|--------|-------------|------------|
|`[String]`|false   |7       |false        |showvolume_m|

#### **ShowVolumeStepSize**
Set step size, allowed range is [0, 5]. Default is 0, which means step is disabled.

|Type      |Required|Position|PipelineInput|Aliases     |
|----------|--------|--------|-------------|------------|
|`[Double]`|false   |8       |false        |showvolume_s|

#### **ShowVolumeBackgroundOpacity**
Set background opacity, allowed range is [0, 1]. Default is 0.

|Type      |Required|Position|PipelineInput|Aliases     |
|----------|--------|--------|-------------|------------|
|`[Double]`|false   |9       |false        |showvolume_p|

#### **ShowVolumeDisplayScale**
Set display scale, can be linear: lin or log: log, default is lin.
Valid Values:

* lin
* log

|Type      |Required|Position|PipelineInput|Aliases      |
|----------|--------|--------|-------------|-------------|
|`[String]`|false   |10      |false        |showvolume_ds|

#### **ShowVolumeDisplayMaxInterval**
In second. If set to > 0., display a line for the max level in the previous seconds. default is disabled

|Type      |Required|Position|PipelineInput|Aliases      |
|----------|--------|--------|-------------|-------------|
|`[Double]`|false   |11      |false        |showvolume_dm|

#### **ShowVolumeDisplayMaxColor**
The color of the max line (if -ShowVolumeDisplayMaxInterval is set).
default is 'orange'.

|Type      |Required|Position|PipelineInput|Aliases       |
|----------|--------|--------|-------------|--------------|
|`[Object]`|false   |12      |false        |showvolume_dmc|

---

### Syntax
```PowerShell
Extension/ShowVolume.RoughDraft.Extension.ps1 -ShowVolume [[-ShowVolumeBorderWidth] <Int32>] [[-ShowVolumeChannelWidth] <Int32>] [[-ShowVolumeChannelHeight] <Int32>] [[-ShowVolumeChannelFade] <Double>] [[-ShowVolumeColorExpression] <String>] [[-ShowVolumeOrientation] <String>] [[-ShowVolumeMode] <String>] [[-ShowVolumeStepSize] <Double>] [[-ShowVolumeBackgroundOpacity] <Double>] [[-ShowVolumeDisplayScale] <String>] [[-ShowVolumeDisplayMaxInterval] <Double>] [[-ShowVolumeDisplayMaxColor] <Object>] [<CommonParameters>]
```
