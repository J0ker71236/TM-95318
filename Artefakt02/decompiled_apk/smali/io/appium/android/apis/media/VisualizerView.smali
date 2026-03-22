.class Lio/appium/android/apis/media/VisualizerView;
.super Landroid/view/View;
.source "AudioFxDemo.java"


# instance fields
.field private mBytes:[B

.field private mForePaint:Landroid/graphics/Paint;

.field private mPoints:[F

.field private mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 210
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 205
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/media/VisualizerView;->mRect:Landroid/graphics/Rect;

    .line 207
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/media/VisualizerView;->mForePaint:Landroid/graphics/Paint;

    .line 211
    invoke-direct {p0}, Lio/appium/android/apis/media/VisualizerView;->init()V

    .line 212
    return-void
.end method

.method private init()V
    .locals 4

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appium/android/apis/media/VisualizerView;->mBytes:[B

    .line 217
    iget-object v0, p0, Lio/appium/android/apis/media/VisualizerView;->mForePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 218
    iget-object v0, p0, Lio/appium/android/apis/media/VisualizerView;->mForePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 219
    iget-object v0, p0, Lio/appium/android/apis/media/VisualizerView;->mForePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/16 v2, 0x80

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 229
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 231
    iget-object v0, p0, Lio/appium/android/apis/media/VisualizerView;->mBytes:[B

    if-nez v0, :cond_0

    .line 232
    return-void

    .line 235
    :cond_0
    iget-object v1, p0, Lio/appium/android/apis/media/VisualizerView;->mPoints:[F

    if-eqz v1, :cond_1

    array-length v1, v1

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    if-ge v1, v0, :cond_2

    .line 236
    :cond_1
    iget-object v0, p0, Lio/appium/android/apis/media/VisualizerView;->mBytes:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lio/appium/android/apis/media/VisualizerView;->mPoints:[F

    .line 239
    :cond_2
    iget-object v0, p0, Lio/appium/android/apis/media/VisualizerView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lio/appium/android/apis/media/VisualizerView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lio/appium/android/apis/media/VisualizerView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 241
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lio/appium/android/apis/media/VisualizerView;->mBytes:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    .line 242
    iget-object v1, p0, Lio/appium/android/apis/media/VisualizerView;->mPoints:[F

    mul-int/lit8 v2, v0, 0x4

    iget-object v3, p0, Lio/appium/android/apis/media/VisualizerView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    mul-int v3, v3, v0

    iget-object v4, p0, Lio/appium/android/apis/media/VisualizerView;->mBytes:[B

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v1, v2

    .line 243
    iget-object v1, p0, Lio/appium/android/apis/media/VisualizerView;->mPoints:[F

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lio/appium/android/apis/media/VisualizerView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lio/appium/android/apis/media/VisualizerView;->mBytes:[B

    aget-byte v4, v4, v0

    add-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    iget-object v5, p0, Lio/appium/android/apis/media/VisualizerView;->mRect:Landroid/graphics/Rect;

    .line 244
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    mul-int v4, v4, v5

    div-int/lit16 v4, v4, 0x80

    add-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v1, v2

    .line 245
    iget-object v1, p0, Lio/appium/android/apis/media/VisualizerView;->mPoints:[F

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lio/appium/android/apis/media/VisualizerView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    mul-int v3, v3, v4

    iget-object v4, p0, Lio/appium/android/apis/media/VisualizerView;->mBytes:[B

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v1, v2

    .line 246
    iget-object v1, p0, Lio/appium/android/apis/media/VisualizerView;->mPoints:[F

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lio/appium/android/apis/media/VisualizerView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lio/appium/android/apis/media/VisualizerView;->mBytes:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v4, v4, v5

    add-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    iget-object v5, p0, Lio/appium/android/apis/media/VisualizerView;->mRect:Landroid/graphics/Rect;

    .line 247
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    mul-int v4, v4, v5

    div-int/lit16 v4, v4, 0x80

    add-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v1, v2

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 250
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Lio/appium/android/apis/media/VisualizerView;->mPoints:[F

    iget-object v1, p0, Lio/appium/android/apis/media/VisualizerView;->mForePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 251
    return-void
.end method

.method public updateVisualizer([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .line 223
    iput-object p1, p0, Lio/appium/android/apis/media/VisualizerView;->mBytes:[B

    .line 224
    invoke-virtual {p0}, Lio/appium/android/apis/media/VisualizerView;->invalidate()V

    .line 225
    return-void
.end method
