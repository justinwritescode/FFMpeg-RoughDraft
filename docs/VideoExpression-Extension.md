Extension/VideoExpression.RoughDraft.Extension.ps1
--------------------------------------------------

### Synopsis
Evaluates Video Expressions

---

### Description

Evaluates Video Expressions, using the [geq filter](https://ffmpeg.org/ffmpeg-filters.html#geq)

---

### Related Links
* [https://ffmpeg.org/ffmpeg-filters.html#geq](https://ffmpeg.org/ffmpeg-filters.html#geq)

---

### Examples
Flips a video horizontally

```PowerShell
Edit-Media -InputPath .\a.mp4 -VideoExpression 'p(W-X,Y)'
```
> EXAMPLE 2

```PowerShell
Edit-Media -InputPath .\a.mp4 -VideoExpression 'clip(sin(T*2), -.5,.5)*p(X,Y)'
```
> EXAMPLE 3

```PowerShell
Edit-Media -InputPath .\a.mp4 -VideoExpression 'p(floor((sin(T) * W) -X),Y)'
Edit-Media -InputPath .\a.mp4 -VideoExpression 'p(        
        if(
            gt(X,W/2),
            X,
            W-X
        ),
        Y
    )
'
```
Changes color based off of the pixel position

```PowerShell
Edit-Media -InputPath .\a.mp4 -VideoExpression '' -VideoExpressionRed '(X*Y)/(W*H)*r(X,Y)' -VideoExpressionGreen '(1-X/W)*g(X,Y)' -VideoExpressionBlue '(H-Y)/H*b(X,Y)' -Verbose
```

---

### Parameters
#### **VideoExpression**
The video luminance expression.
If you do not wish to provide a luminance expression, pass a blank string to this parameter.

|Type        |Required|Position|PipelineInput|Aliases     |
|------------|--------|--------|-------------|------------|
|`[String[]]`|true    |1       |false        |geq_lum_expr|

#### **VideoExpressionChrominanceBlue**
Set the chrominance blue expression.

|Type      |Required|Position|PipelineInput|Aliases    |
|----------|--------|--------|-------------|-----------|
|`[String]`|false   |2       |false        |geq_cb_expr|

#### **VideoExpressionChrominanceRed**
Set the chrominance red expression.

|Type      |Required|Position|PipelineInput|Aliases    |
|----------|--------|--------|-------------|-----------|
|`[String]`|false   |3       |false        |geq_cr_expr|

#### **VideoExpressionAlpha**
Set the alpha expression.

|Type      |Required|Position|PipelineInput|Aliases       |
|----------|--------|--------|-------------|--------------|
|`[String]`|false   |4       |false        |geq_alpha_expr|

#### **VideoExpressionRed**
Set the red expression.

|Type      |Required|Position|PipelineInput|Aliases     |
|----------|--------|--------|-------------|------------|
|`[String]`|false   |5       |false        |geq_red_expr|

#### **VideoExpressionBlue**
Set the green expression.

|Type      |Required|Position|PipelineInput|Aliases      |
|----------|--------|--------|-------------|-------------|
|`[String]`|false   |6       |false        |geq_blue_expr|

#### **VideoExpressionGreen**
Set the blue expression.

|Type      |Required|Position|PipelineInput|Aliases       |
|----------|--------|--------|-------------|--------------|
|`[String]`|false   |7       |false        |geq_green_expr|

---

### Notes
The colorspace is selected according to the specified options. If one of the lum_expr, cb_expr, or cr_expr options is specified, the filter will automatically select a YCbCr colorspace. If one of the red_expr, green_expr, or blue_expr options is specified, it will select an RGB colorspace.

If one of the chrominance expression is not defined, it falls back on the other one. If no alpha expression is specified it will evaluate to opaque value. If none of chrominance expressions are specified, they will evaluate to the luminance expression.

The expressions can use the following variables and functions:

|Variable|Purpose|
|--------|-------|
|N       |The sequential number of the filtered frame, starting from 0.|
|X,Y     |The coordinates of the current sample.|    
|W,H     |The width and height of the image.|    
|SW,SH   |Width and height scale depending on the currently filtered plane. It is the ratio between the corresponding luma plane number of pixels and the current plane ones. E.g. for YUV4:2:0 the values are 1,1 for the luma plane, and 0.5,0.5 for chroma planes.|
|T       |Time of the current frame, expressed in seconds.|
|p(x, y) |Return the value of the pixel at location (x,y) of the current plane.|
|lum(x, y)|Return the value of the pixel at location (x,y) of the luminance plane.|
|cb(x, y)|Return the value of the pixel at location (x,y) of the blue-difference chroma plane. Return 0 if there is no such plane.|
|cr(x, y)|Return the value of the pixel at location (x,y) of the red-difference chroma plane. Return 0 if there is no such plane.|
|r(x, y),g(x, y),b(x, y)|Return the value of the pixel at location (x,y) of the red/green/blue component. Return 0 if there is no such component.
|alpha(x, y)|Return the value of the pixel at location (x,y) of the alpha plane. Return 0 if there is no such plane.|
|psum(x,y), lumsum(x, y), cbsum(x,y), crsum(x,y), rsum(x,y), gsum(x,y), bsum(x,y), alphasum(x,y)|Sum of sample values in the rectangle from (0,0) to (x,y), this allows obtaining sums of samples within a rectangle. See the functions without the sum postfix.|

---

### Syntax
```PowerShell
Extension/VideoExpression.RoughDraft.Extension.ps1 [-VideoExpression] <String[]> [[-VideoExpressionChrominanceBlue] <String>] [[-VideoExpressionChrominanceRed] <String>] [[-VideoExpressionAlpha] <String>] [[-VideoExpressionRed] <String>] [[-VideoExpressionBlue] <String>] [[-VideoExpressionGreen] <String>] [<CommonParameters>]
```
