Extension/BilateralSmooth.RoughDraft.Extension.ps1
--------------------------------------------------

### Synopsis
Bilateral Smooth

---

### Description

Applies a [bilateral](https://ffmpeg.org/ffmpeg-filters.html#bilateral) video filter, spatial smoothing while preserving edges.

---

### Related Links
* [https://ffmpeg.org/ffmpeg-filters.html#bilateral](https://ffmpeg.org/ffmpeg-filters.html#bilateral)

---

### Parameters
#### **BilateralSmooth**
If set, apply Apply bilateral filter, spatial smoothing while preserving edges

|Type      |Required|Position|PipelineInput|Aliases  |
|----------|--------|--------|-------------|---------|
|`[Switch]`|true    |named   |false        |bilateral|

#### **BilateralSmoothSpatialWeight**
Set sigma of gaussian function to calculate spatial weight. Allowed range is 0 to 512. Default is 0.1.

|Type      |Required|Position|PipelineInput|Aliases         |
|----------|--------|--------|-------------|----------------|
|`[Double]`|false   |1       |false        |bilateral_sigmaS|

#### **BilateralSmoothRangeWeight**
Set sigma of gaussian function to calculate range weight. Allowed range is 0 to 1. Default is 0.1.

|Type      |Required|Position|PipelineInput|Aliases         |
|----------|--------|--------|-------------|----------------|
|`[Single]`|false   |2       |false        |bilateral_sigmaR|

---

### Syntax
```PowerShell
Extension/BilateralSmooth.RoughDraft.Extension.ps1 -BilateralSmooth [[-BilateralSmoothSpatialWeight] <Double>] [[-BilateralSmoothRangeWeight] <Single>] [<CommonParameters>]
```
