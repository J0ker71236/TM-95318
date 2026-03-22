.class Lio/appium/android/apis/graphics/Sweep$SampleView;
.super Landroid/view/View;
.source "Sweep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/Sweep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# instance fields
.field private mDoTiming:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPaint:Landroid/graphics/Paint;

.field private mRotate:F

.field private mShader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mMatrix:Landroid/graphics/Matrix;

    .line 42
    invoke-virtual {p0, v1}, Lio/appium/android/apis/graphics/Sweep$SampleView;->setFocusable(Z)V

    .line 43
    invoke-virtual {p0, v1}, Lio/appium/android/apis/graphics/Sweep$SampleView;->setFocusableInTouchMode(Z)V

    .line 45
    const/high16 v0, 0x43200000    # 160.0f

    .line 46
    .local v0, "x":F
    const/high16 v1, 0x42c80000    # 100.0f

    .line 47
    .local v1, "y":F
    new-instance v2, Landroid/graphics/SweepGradient;

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    iput-object v2, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mShader:Landroid/graphics/Shader;

    .line 51
    iget-object v2, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 52
    return-void

    :array_0
    .array-data 4
        -0xff0100
        -0x10000
        -0xffff01
        -0xff0100
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 55
    iget-object v0, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 56
    .local v0, "paint":Landroid/graphics/Paint;
    const/high16 v1, 0x43200000    # 160.0f

    .line 57
    .local v1, "x":F
    const/high16 v2, 0x42c80000    # 100.0f

    .line 59
    .local v2, "y":F
    const/4 v3, -0x1

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 61
    iget-object v3, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mRotate:F

    invoke-virtual {v3, v4, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 62
    iget-object v3, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mShader:Landroid/graphics/Shader;

    iget-object v4, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 63
    iget v3, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mRotate:F

    const/high16 v4, 0x40400000    # 3.0f

    add-float/2addr v3, v4

    iput v3, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mRotate:F

    .line 64
    iget v3, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mRotate:F

    const/high16 v4, 0x43b40000    # 360.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 65
    const/4 v3, 0x0

    iput v3, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mRotate:F

    .line 67
    :cond_0
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/Sweep$SampleView;->invalidate()V

    .line 69
    iget-boolean v3, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mDoTiming:Z

    const/high16 v4, 0x42a00000    # 80.0f

    if-eqz v3, :cond_2

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 71
    .local v5, "now":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v7, 0x14

    if-ge v3, v7, :cond_1

    .line 72
    invoke-virtual {p1, v1, v2, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 71
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    .end local v3    # "i":I
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v5

    .line 75
    .end local v5    # "now":J
    .local v3, "now":J
    const-string v5, "skia"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sweep ms = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v7, v3

    const-wide/high16 v9, 0x4034000000000000L    # 20.0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v3    # "now":J
    goto :goto_1

    .line 78
    :cond_2
    invoke-virtual {p1, v1, v2, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 80
    :goto_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 83
    const/16 v0, 0x20

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x30

    if-eq p1, v0, :cond_0

    .line 93
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 89
    :cond_0
    iget-boolean v0, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mDoTiming:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mDoTiming:Z

    .line 90
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/Sweep$SampleView;->invalidate()V

    .line 91
    return v1

    .line 85
    :cond_1
    iget-object v0, p0, Lio/appium/android/apis/graphics/Sweep$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->isDither()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 86
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/Sweep$SampleView;->invalidate()V

    .line 87
    return v1
.end method
