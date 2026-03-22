.class Lio/appium/android/apis/graphics/BitmapPixels$SampleView;
.super Landroid/view/View;
.source "BitmapPixels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/BitmapPixels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# instance fields
.field private mBitmap1:Landroid/graphics/Bitmap;

.field private mBitmap2:Landroid/graphics/Bitmap;

.field private mBitmap3:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .line 130
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->setFocusable(Z)V

    .line 133
    const/16 v0, 0x64

    .line 134
    .local v0, "N":I
    const/16 v1, 0x64

    new-array v8, v1, [I

    .line 135
    .local v8, "data8888":[I
    new-array v9, v1, [S

    .line 136
    .local v9, "data565":[S
    new-array v10, v1, [S

    .line 138
    .local v10, "data4444":[S
    const/high16 v2, -0x10000

    invoke-static {v2}, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->premultiplyColor(I)I

    move-result v2

    const v3, -0xff0100

    invoke-static {v3}, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->premultiplyColor(I)I

    move-result v3

    const/16 v4, 0x64

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    invoke-static/range {v2 .. v7}, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->makeRamp(III[I[S[S)V

    .line 141
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->mBitmap1:Landroid/graphics/Bitmap;

    .line 142
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->mBitmap2:Landroid/graphics/Bitmap;

    .line 143
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->mBitmap3:Landroid/graphics/Bitmap;

    .line 145
    iget-object v2, p0, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->mBitmap1:Landroid/graphics/Bitmap;

    invoke-static {v8, v1}, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->makeBuffer([II)Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 146
    iget-object v2, p0, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->mBitmap2:Landroid/graphics/Bitmap;

    invoke-static {v9, v1}, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->makeBuffer([SI)Ljava/nio/ShortBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 147
    iget-object v2, p0, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->mBitmap3:Landroid/graphics/Bitmap;

    invoke-static {v10, v1}, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->makeBuffer([SI)Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 148
    return-void
.end method

.method private static getA32(I)I
    .locals 1
    .param p0, "c"    # I

    .line 47
    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private static getB32(I)I
    .locals 1
    .param p0, "c"    # I

    .line 45
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private static getG32(I)I
    .locals 1
    .param p0, "c"    # I

    .line 43
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private static getR32(I)I
    .locals 1
    .param p0, "c"    # I

    .line 41
    shr-int/lit8 v0, p0, 0x0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private static makeBuffer([II)Ljava/nio/IntBuffer;
    .locals 2
    .param p0, "src"    # [I
    .param p1, "n"    # I

    .line 112
    mul-int v0, p1, p1

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 113
    .local v0, "dst":Ljava/nio/IntBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 114
    invoke-virtual {v0, p0}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 117
    return-object v0
.end method

.method private static makeBuffer([SI)Ljava/nio/ShortBuffer;
    .locals 2
    .param p0, "src"    # [S
    .param p1, "n"    # I

    .line 121
    mul-int v0, p1, p1

    invoke-static {v0}, Ljava/nio/ShortBuffer;->allocate(I)Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 122
    .local v0, "dst":Ljava/nio/ShortBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 123
    invoke-virtual {v0, p0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 126
    return-object v0
.end method

.method private static makeRamp(III[I[S[S)V
    .locals 14
    .param p0, "from"    # I
    .param p1, "to"    # I
    .param p2, "n"    # I
    .param p3, "ramp8888"    # [I
    .param p4, "ramp565"    # [S
    .param p5, "ramp4444"    # [S

    .line 89
    move/from16 v0, p2

    invoke-static {p0}, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->getR32(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x17

    .line 90
    .local v1, "r":I
    invoke-static {p0}, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->getG32(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x17

    .line 91
    .local v2, "g":I
    invoke-static {p0}, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->getB32(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x17

    .line 92
    .local v3, "b":I
    invoke-static {p0}, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->getA32(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x17

    .line 94
    .local v4, "a":I
    invoke-static {p1}, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->getR32(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x17

    sub-int/2addr v5, v1

    add-int/lit8 v6, v0, -0x1

    div-int/2addr v5, v6

    .line 95
    .local v5, "dr":I
    invoke-static {p1}, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->getG32(I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x17

    sub-int/2addr v6, v2

    add-int/lit8 v7, v0, -0x1

    div-int/2addr v6, v7

    .line 96
    .local v6, "dg":I
    invoke-static {p1}, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->getB32(I)I

    move-result v7

    shl-int/lit8 v7, v7, 0x17

    sub-int/2addr v7, v3

    add-int/lit8 v8, v0, -0x1

    div-int/2addr v7, v8

    .line 97
    .local v7, "db":I
    invoke-static {p1}, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->getA32(I)I

    move-result v8

    shl-int/lit8 v8, v8, 0x17

    sub-int/2addr v8, v4

    add-int/lit8 v9, v0, -0x1

    div-int/2addr v8, v9

    .line 99
    .local v8, "da":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v0, :cond_0

    .line 100
    shr-int/lit8 v10, v1, 0x17

    shr-int/lit8 v11, v2, 0x17

    shr-int/lit8 v12, v3, 0x17

    shr-int/lit8 v13, v4, 0x17

    invoke-static {v10, v11, v12, v13}, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->pack8888(IIII)I

    move-result v10

    aput v10, p3, v9

    .line 101
    shr-int/lit8 v10, v1, 0x1a

    shr-int/lit8 v11, v2, 0x19

    shr-int/lit8 v12, v3, 0x1a

    invoke-static {v10, v11, v12}, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->pack565(III)S

    move-result v10

    aput-short v10, p4, v9

    .line 102
    shr-int/lit8 v10, v1, 0x1b

    shr-int/lit8 v11, v2, 0x1b

    shr-int/lit8 v12, v3, 0x1b

    shr-int/lit8 v13, v4, 0x1b

    invoke-static {v10, v11, v12, v13}, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->pack4444(IIII)S

    move-result v10

    aput-short v10, p5, v9

    .line 104
    add-int/2addr v1, v5

    .line 105
    add-int/2addr v2, v6

    .line 106
    add-int/2addr v3, v7

    .line 107
    add-int/2addr v4, v8

    .line 99
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 109
    .end local v9    # "i":I
    :cond_0
    return-void
.end method

.method private static mul255(II)I
    .locals 2
    .param p0, "c"    # I
    .param p1, "a"    # I

    .line 66
    mul-int v0, p0, p1

    add-int/lit16 v0, v0, 0x80

    .line 67
    .local v0, "prod":I
    shr-int/lit8 v1, v0, 0x8

    add-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x8

    return v1
.end method

.method private static pack4444(IIII)S
    .locals 2
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "a"    # I

    .line 62
    shl-int/lit8 v0, p3, 0x0

    shl-int/lit8 v1, p2, 0x4

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    shl-int/lit8 v1, p0, 0xc

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private static pack565(III)S
    .locals 2
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I

    .line 58
    shl-int/lit8 v0, p0, 0xb

    shl-int/lit8 v1, p1, 0x5

    or-int/2addr v0, v1

    shl-int/lit8 v1, p2, 0x0

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private static pack8888(IIII)I
    .locals 2
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "a"    # I

    .line 54
    shl-int/lit8 v0, p0, 0x0

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    shl-int/lit8 v1, p2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p3, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private static premultiplyColor(I)I
    .locals 5
    .param p0, "c"    # I

    .line 74
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 75
    .local v0, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 76
    .local v1, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 77
    .local v2, "b":I
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    .line 79
    .local v3, "a":I
    invoke-static {v0, v3}, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->mul255(II)I

    move-result v0

    .line 80
    invoke-static {v1, v3}, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->mul255(II)I

    move-result v1

    .line 81
    invoke-static {v2, v3}, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->mul255(II)I

    move-result v2

    .line 83
    invoke-static {v0, v1, v2, v3}, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->pack8888(IIII)I

    move-result v4

    return v4
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 151
    const v0, -0x333334

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 153
    const/16 v0, 0xa

    .line 154
    .local v0, "y":I
    iget-object v1, p0, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->mBitmap1:Landroid/graphics/Bitmap;

    int-to-float v2, v0

    const/4 v3, 0x0

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 155
    iget-object v1, p0, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->mBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 156
    iget-object v1, p0, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->mBitmap2:Landroid/graphics/Bitmap;

    int-to-float v2, v0

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 157
    iget-object v1, p0, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->mBitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 158
    iget-object v1, p0, Lio/appium/android/apis/graphics/BitmapPixels$SampleView;->mBitmap3:Landroid/graphics/Bitmap;

    int-to-float v2, v0

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 159
    return-void
.end method
