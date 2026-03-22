.class Lio/appium/android/apis/graphics/Preview;
.super Landroid/view/ViewGroup;
.source "CameraPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private final TAG:Ljava/lang/String;

.field mCamera:Landroid/hardware/Camera;

.field mHolder:Landroid/view/SurfaceHolder;

.field mPreviewSize:Landroid/hardware/Camera$Size;

.field mSupportedPreviewSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 171
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 162
    const-string v0, "Preview"

    iput-object v0, p0, Lio/appium/android/apis/graphics/Preview;->TAG:Ljava/lang/String;

    .line 173
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/Preview;->mSurfaceView:Landroid/view/SurfaceView;

    .line 174
    iget-object v0, p0, Lio/appium/android/apis/graphics/Preview;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/Preview;->addView(Landroid/view/View;)V

    .line 178
    iget-object v0, p0, Lio/appium/android/apis/graphics/Preview;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/graphics/Preview;->mHolder:Landroid/view/SurfaceHolder;

    .line 179
    iget-object v0, p0, Lio/appium/android/apis/graphics/Preview;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 180
    iget-object v0, p0, Lio/appium/android/apis/graphics/Preview;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 181
    return-void
.end method

.method private getOptimalPreviewSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    .locals 19
    .param p2, "w"    # I
    .param p3, "h"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;II)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .line 268
    .local p1, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 269
    .local v0, "ASPECT_TOLERANCE":D
    move/from16 v2, p2

    int-to-double v3, v2

    move/from16 v5, p3

    int-to-double v6, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v6

    .line 270
    .local v3, "targetRatio":D
    if-nez p1, :cond_0

    const/4 v6, 0x0

    return-object v6

    .line 272
    :cond_0
    const/4 v6, 0x0

    .line 273
    .local v6, "optimalSize":Landroid/hardware/Camera$Size;
    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 275
    .local v7, "minDiff":D
    move/from16 v9, p3

    .line 278
    .local v9, "targetHeight":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Camera$Size;

    .line 279
    .local v11, "size":Landroid/hardware/Camera$Size;
    iget v12, v11, Landroid/hardware/Camera$Size;->width:I

    int-to-double v12, v12

    iget v14, v11, Landroid/hardware/Camera$Size;->height:I

    int-to-double v14, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v14

    .line 280
    .local v12, "ratio":D
    sub-double v14, v12, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v16, 0x3fb999999999999aL    # 0.1

    cmpl-double v18, v14, v16

    if-lez v18, :cond_1

    goto :goto_0

    .line 281
    :cond_1
    iget v14, v11, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v14, v9

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-double v14, v14

    cmpg-double v16, v14, v7

    if-gez v16, :cond_2

    .line 282
    move-object v6, v11

    .line 283
    iget v14, v11, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v14, v9

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-double v7, v14

    .line 285
    .end local v11    # "size":Landroid/hardware/Camera$Size;
    .end local v12    # "ratio":D
    :cond_2
    goto :goto_0

    .line 288
    :cond_3
    if-nez v6, :cond_5

    .line 289
    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 290
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Camera$Size;

    .line 291
    .restart local v11    # "size":Landroid/hardware/Camera$Size;
    iget v12, v11, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v12, v9

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-double v12, v12

    cmpg-double v14, v12, v7

    if-gez v14, :cond_4

    .line 292
    move-object v6, v11

    .line 293
    iget v12, v11, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v12, v9

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-double v7, v12

    .line 295
    .end local v11    # "size":Landroid/hardware/Camera$Size;
    :cond_4
    goto :goto_1

    .line 297
    :cond_5
    return-object v6
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 221
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lio/appium/android/apis/graphics/Preview;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/Preview;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 224
    .local v1, "child":Landroid/view/View;
    sub-int v2, p4, p2

    .line 225
    .local v2, "width":I
    sub-int v3, p5, p3

    .line 227
    .local v3, "height":I
    move v4, v2

    .line 228
    .local v4, "previewWidth":I
    move v5, v3

    .line 229
    .local v5, "previewHeight":I
    iget-object v6, p0, Lio/appium/android/apis/graphics/Preview;->mPreviewSize:Landroid/hardware/Camera$Size;

    if-eqz v6, :cond_0

    .line 230
    iget v4, v6, Landroid/hardware/Camera$Size;->width:I

    .line 231
    iget-object v6, p0, Lio/appium/android/apis/graphics/Preview;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v5, v6, Landroid/hardware/Camera$Size;->height:I

    .line 235
    :cond_0
    mul-int v6, v2, v5

    mul-int v7, v3, v4

    if-le v6, v7, :cond_1

    .line 236
    mul-int v6, v4, v3

    div-int/2addr v6, v5

    .line 237
    .local v6, "scaledChildWidth":I
    sub-int v7, v2, v6

    div-int/lit8 v7, v7, 0x2

    add-int v8, v2, v6

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v1, v7, v0, v8, v3}, Landroid/view/View;->layout(IIII)V

    .line 239
    .end local v6    # "scaledChildWidth":I
    goto :goto_0

    .line 240
    :cond_1
    mul-int v6, v5, v2

    div-int/2addr v6, v4

    .line 241
    .local v6, "scaledChildHeight":I
    sub-int v7, v3, v6

    div-int/lit8 v7, v7, 0x2

    add-int v8, v3, v6

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v1, v0, v7, v2, v8}, Landroid/view/View;->layout(IIII)V

    .line 245
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "previewWidth":I
    .end local v5    # "previewHeight":I
    .end local v6    # "scaledChildHeight":I
    :cond_2
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 210
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/Preview;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lio/appium/android/apis/graphics/Preview;->resolveSize(II)I

    move-result v0

    .line 211
    .local v0, "width":I
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/Preview;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lio/appium/android/apis/graphics/Preview;->resolveSize(II)I

    move-result v1

    .line 212
    .local v1, "height":I
    invoke-virtual {p0, v0, v1}, Lio/appium/android/apis/graphics/Preview;->setMeasuredDimension(II)V

    .line 214
    iget-object v2, p0, Lio/appium/android/apis/graphics/Preview;->mSupportedPreviewSizes:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 215
    invoke-direct {p0, v2, v0, v1}, Lio/appium/android/apis/graphics/Preview;->getOptimalPreviewSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v2

    iput-object v2, p0, Lio/appium/android/apis/graphics/Preview;->mPreviewSize:Landroid/hardware/Camera$Size;

    .line 217
    :cond_0
    return-void
.end method

.method public setCamera(Landroid/hardware/Camera;)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/Camera;

    .line 184
    iput-object p1, p0, Lio/appium/android/apis/graphics/Preview;->mCamera:Landroid/hardware/Camera;

    .line 185
    iget-object v0, p0, Lio/appium/android/apis/graphics/Preview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/graphics/Preview;->mSupportedPreviewSizes:Ljava/util/List;

    .line 187
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/Preview;->requestLayout()V

    .line 189
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .line 303
    iget-object v0, p0, Lio/appium/android/apis/graphics/Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 304
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    iget-object v1, p0, Lio/appium/android/apis/graphics/Preview;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v2, p0, Lio/appium/android/apis/graphics/Preview;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 305
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/Preview;->requestLayout()V

    .line 307
    iget-object v1, p0, Lio/appium/android/apis/graphics/Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 308
    iget-object v1, p0, Lio/appium/android/apis/graphics/Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 309
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 251
    :try_start_0
    iget-object v0, p0, Lio/appium/android/apis/graphics/Preview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lio/appium/android/apis/graphics/Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :cond_0
    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "exception":Ljava/io/IOException;
    const-string v1, "Preview"

    const-string v2, "IOException caused by setPreviewDisplay()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    .end local v0    # "exception":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 261
    iget-object v0, p0, Lio/appium/android/apis/graphics/Preview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 264
    :cond_0
    return-void
.end method

.method public switchCamera(Landroid/hardware/Camera;)V
    .locals 3
    .param p1, "camera"    # Landroid/hardware/Camera;

    .line 192
    invoke-virtual {p0, p1}, Lio/appium/android/apis/graphics/Preview;->setCamera(Landroid/hardware/Camera;)V

    .line 194
    :try_start_0
    iget-object v0, p0, Lio/appium/android/apis/graphics/Preview;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "exception":Ljava/io/IOException;
    const-string v1, "Preview"

    const-string v2, "IOException caused by setPreviewDisplay()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    .end local v0    # "exception":Ljava/io/IOException;
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 199
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    iget-object v1, p0, Lio/appium/android/apis/graphics/Preview;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v2, p0, Lio/appium/android/apis/graphics/Preview;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 200
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/Preview;->requestLayout()V

    .line 202
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 203
    return-void
.end method
