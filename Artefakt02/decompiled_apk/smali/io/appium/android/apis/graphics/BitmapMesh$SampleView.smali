.class Lio/appium/android/apis/graphics/BitmapMesh$SampleView;
.super Landroid/view/View;
.source "BitmapMesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/BitmapMesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# static fields
.field private static final COUNT:I = 0x1b9

.field private static final HEIGHT:I = 0x14

.field private static final WIDTH:I = 0x14


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mInverse:Landroid/graphics/Matrix;

.field private mLastWarpX:I

.field private mLastWarpY:I

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mOrig:[F

.field private final mVerts:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 41
    const/16 v0, 0x372

    new-array v1, v0, [F

    iput-object v1, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mVerts:[F

    .line 42
    new-array v0, v0, [F

    iput-object v0, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mOrig:[F

    .line 44
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mMatrix:Landroid/graphics/Matrix;

    .line 45
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mInverse:Landroid/graphics/Matrix;

    .line 109
    const/16 v0, -0x270f

    iput v0, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mLastWarpX:I

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->setFocusable(Z)V

    .line 56
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08005b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mBitmap:Landroid/graphics/Bitmap;

    .line 59
    iget-object v0, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 60
    .local v0, "w":F
    iget-object v1, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 62
    .local v1, "h":F
    const/4 v2, 0x0

    .line 63
    .local v2, "index":I
    const/4 v3, 0x0

    .local v3, "y":I
    :goto_0
    const/16 v4, 0x14

    if-gt v3, v4, :cond_1

    .line 64
    int-to-float v5, v3

    mul-float v5, v5, v1

    const/high16 v6, 0x41a00000    # 20.0f

    div-float/2addr v5, v6

    .line 65
    .local v5, "fy":F
    const/4 v7, 0x0

    .local v7, "x":I
    :goto_1
    if-gt v7, v4, :cond_0

    .line 66
    int-to-float v8, v7

    mul-float v8, v8, v0

    div-float/2addr v8, v6

    .line 67
    .local v8, "fx":F
    iget-object v9, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mVerts:[F

    invoke-static {v9, v2, v8, v5}, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->setXY([FIFF)V

    .line 68
    iget-object v9, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mOrig:[F

    invoke-static {v9, v2, v8, v5}, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->setXY([FIFF)V

    .line 69
    nop

    .end local v8    # "fx":F
    add-int/lit8 v2, v2, 0x1

    .line 65
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 63
    .end local v5    # "fy":F
    .end local v7    # "x":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    .end local v3    # "y":I
    :cond_1
    iget-object v3, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 74
    iget-object v3, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mInverse:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 75
    return-void
.end method

.method private static setXY([FIFF)V
    .locals 1
    .param p0, "array"    # [F
    .param p1, "index"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 48
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x0

    aput p2, p0, v0

    .line 49
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    aput p3, p0, v0

    .line 50
    return-void
.end method

.method private warp(FF)V
    .locals 13
    .param p1, "cx"    # F
    .param p2, "cy"    # F

    .line 86
    const v0, 0x461c4000    # 10000.0f

    .line 87
    .local v0, "K":F
    iget-object v1, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mOrig:[F

    .line 88
    .local v1, "src":[F
    iget-object v2, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mVerts:[F

    .line 89
    .local v2, "dst":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x372

    if-ge v3, v4, :cond_1

    .line 90
    add-int/lit8 v4, v3, 0x0

    aget v4, v1, v4

    .line 91
    .local v4, "x":F
    add-int/lit8 v5, v3, 0x1

    aget v5, v1, v5

    .line 92
    .local v5, "y":F
    sub-float v6, p1, v4

    .line 93
    .local v6, "dx":F
    sub-float v7, p2, v5

    .line 94
    .local v7, "dy":F
    mul-float v8, v6, v6

    mul-float v9, v7, v7

    add-float/2addr v8, v9

    .line 95
    .local v8, "dd":F
    float-to-double v9, v8

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v9, v9

    .line 96
    .local v9, "d":F
    const v10, 0x461c4000    # 10000.0f

    const v11, 0x358637bd    # 1.0E-6f

    add-float v12, v8, v11

    div-float/2addr v10, v12

    .line 97
    .local v10, "pull":F
    add-float/2addr v11, v9

    div-float/2addr v10, v11

    .line 99
    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v10, v11

    if-ltz v11, :cond_0

    .line 100
    add-int/lit8 v11, v3, 0x0

    aput p1, v2, v11

    .line 101
    add-int/lit8 v11, v3, 0x1

    aput p2, v2, v11

    goto :goto_1

    .line 103
    :cond_0
    add-int/lit8 v11, v3, 0x0

    mul-float v12, v6, v10

    add-float/2addr v12, v4

    aput v12, v2, v11

    .line 104
    add-int/lit8 v11, v3, 0x1

    mul-float v12, v7, v10

    add-float/2addr v12, v5

    aput v12, v2, v11

    .line 89
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "dx":F
    .end local v7    # "dy":F
    .end local v8    # "dd":F
    .end local v9    # "d":F
    .end local v10    # "pull":F
    :goto_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 107
    .end local v3    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 78
    const v0, -0x333334

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 80
    iget-object v0, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 81
    iget-object v2, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mVerts:[F

    const/16 v3, 0x14

    const/16 v4, 0x14

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    .line 83
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 113
    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 114
    .local v0, "pt":[F
    iget-object v1, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mInverse:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 116
    aget v1, v0, v2

    float-to-int v1, v1

    .line 117
    .local v1, "x":I
    aget v4, v0, v3

    float-to-int v4, v4

    .line 118
    .local v4, "y":I
    iget v5, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mLastWarpX:I

    if-ne v5, v1, :cond_0

    iget v5, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mLastWarpY:I

    if-eq v5, v4, :cond_1

    .line 119
    :cond_0
    iput v1, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mLastWarpX:I

    .line 120
    iput v4, p0, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->mLastWarpY:I

    .line 121
    aget v2, v0, v2

    aget v5, v0, v3

    invoke-direct {p0, v2, v5}, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->warp(FF)V

    .line 122
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/BitmapMesh$SampleView;->invalidate()V

    .line 124
    :cond_1
    return v3
.end method
