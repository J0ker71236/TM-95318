.class Lio/appium/android/apis/graphics/Xfermodes$SampleView;
.super Landroid/view/View;
.source "Xfermodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/Xfermodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# static fields
.field private static final H:I = 0x40

.field private static final ROW_MAX:I = 0x4

.field private static final W:I = 0x40

.field private static final sLabels:[Ljava/lang/String;

.field private static final sModes:[Landroid/graphics/Xfermode;


# instance fields
.field private mBG:Landroid/graphics/Shader;

.field private mDstB:Landroid/graphics/Bitmap;

.field private mSrcB:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 73
    const/16 v0, 0x10

    new-array v1, v0, [Landroid/graphics/Xfermode;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/4 v7, 0x4

    aput-object v2, v1, v7

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/4 v8, 0x5

    aput-object v2, v1, v8

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/4 v9, 0x6

    aput-object v2, v1, v9

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/4 v10, 0x7

    aput-object v2, v1, v10

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/16 v11, 0x8

    aput-object v2, v1, v11

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v12}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/16 v12, 0x9

    aput-object v2, v1, v12

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v13}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/16 v13, 0xa

    aput-object v2, v1, v13

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v14}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/16 v14, 0xb

    aput-object v2, v1, v14

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v15}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/16 v15, 0xc

    aput-object v2, v1, v15

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v15}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/16 v15, 0xd

    aput-object v2, v1, v15

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v15}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/16 v15, 0xe

    aput-object v2, v1, v15

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v15}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/16 v15, 0xf

    aput-object v2, v1, v15

    sput-object v1, Lio/appium/android/apis/graphics/Xfermodes$SampleView;->sModes:[Landroid/graphics/Xfermode;

    .line 92
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Clear"

    aput-object v1, v0, v3

    const-string v1, "Src"

    aput-object v1, v0, v4

    const-string v1, "Dst"

    aput-object v1, v0, v5

    const-string v1, "SrcOver"

    aput-object v1, v0, v6

    const-string v1, "DstOver"

    aput-object v1, v0, v7

    const-string v1, "SrcIn"

    aput-object v1, v0, v8

    const-string v1, "DstIn"

    aput-object v1, v0, v9

    const-string v1, "SrcOut"

    aput-object v1, v0, v10

    const-string v1, "DstOut"

    aput-object v1, v0, v11

    const-string v1, "SrcATop"

    aput-object v1, v0, v12

    const-string v1, "DstATop"

    aput-object v1, v0, v13

    const-string v1, "Xor"

    aput-object v1, v0, v14

    const-string v1, "Darken"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "Lighten"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "Multiply"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "Screen"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lio/appium/android/apis/graphics/Xfermodes$SampleView;->sLabels:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 100
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 102
    const/16 v0, 0x40

    invoke-static {v0, v0}, Lio/appium/android/apis/graphics/Xfermodes;->makeSrc(II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lio/appium/android/apis/graphics/Xfermodes$SampleView;->mSrcB:Landroid/graphics/Bitmap;

    .line 103
    invoke-static {v0, v0}, Lio/appium/android/apis/graphics/Xfermodes;->makeDst(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/graphics/Xfermodes$SampleView;->mDstB:Landroid/graphics/Bitmap;

    .line 106
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x2

    invoke-static {v0, v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lio/appium/android/apis/graphics/Xfermodes$SampleView;->mBG:Landroid/graphics/Shader;

    .line 112
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 113
    .local v1, "m":Landroid/graphics/Matrix;
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 114
    iget-object v2, p0, Lio/appium/android/apis/graphics/Xfermodes$SampleView;->mBG:Landroid/graphics/Shader;

    invoke-virtual {v2, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 115
    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x333334
        -0x333334
        -0x1
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 118
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 119
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    move-object v6, v0

    .line 120
    .local v6, "labelP":Landroid/graphics/Paint;
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 121
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    move-object v7, v0

    .line 122
    .local v7, "paint":Landroid/graphics/Paint;
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 123
    const/high16 v0, 0x41700000    # 15.0f

    const/high16 v1, 0x420c0000    # 35.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "x":I
    const/4 v1, 0x0

    .line 126
    .local v1, "y":I
    const/4 v2, 0x0

    move v9, v0

    move v10, v1

    move v8, v2

    .end local v0    # "x":I
    .end local v1    # "y":I
    .local v8, "i":I
    .local v9, "x":I
    .local v10, "y":I
    :goto_0
    sget-object v0, Lio/appium/android/apis/graphics/Xfermodes$SampleView;->sModes:[Landroid/graphics/Xfermode;

    array-length v0, v0

    if-ge v8, v0, :cond_1

    .line 128
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 129
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 130
    int-to-float v0, v9

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float v2, v0, v1

    int-to-float v0, v10

    sub-float v3, v0, v1

    add-int/lit8 v0, v9, 0x40

    int-to-float v0, v0

    add-float v4, v0, v1

    add-int/lit8 v0, v10, 0x40

    int-to-float v0, v0

    add-float v5, v0, v1

    move-object v0, p1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 133
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 134
    iget-object v0, p0, Lio/appium/android/apis/graphics/Xfermodes$SampleView;->mBG:Landroid/graphics/Shader;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 135
    int-to-float v1, v9

    int-to-float v2, v10

    add-int/lit8 v0, v9, 0x40

    int-to-float v3, v0

    add-int/lit8 v0, v10, 0x40

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 137
    int-to-float v1, v9

    int-to-float v2, v10

    add-int/lit8 v0, v9, 0x40

    int-to-float v3, v0

    add-int/lit8 v0, v10, 0x40

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v0

    .line 138
    .local v0, "sc":I
    int-to-float v1, v9

    int-to-float v2, v10

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 139
    iget-object v1, p0, Lio/appium/android/apis/graphics/Xfermodes$SampleView;->mDstB:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 140
    sget-object v1, Lio/appium/android/apis/graphics/Xfermodes$SampleView;->sModes:[Landroid/graphics/Xfermode;

    aget-object v1, v1, v8

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 141
    iget-object v1, p0, Lio/appium/android/apis/graphics/Xfermodes$SampleView;->mSrcB:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v2, v2, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 142
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 143
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 145
    sget-object v1, Lio/appium/android/apis/graphics/Xfermodes$SampleView;->sLabels:[Ljava/lang/String;

    aget-object v1, v1, v8

    add-int/lit8 v2, v9, 0x20

    int-to-float v2, v2

    int-to-float v3, v10

    .line 146
    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 145
    invoke-virtual {p1, v1, v2, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 147
    add-int/lit8 v9, v9, 0x4a

    .line 149
    rem-int/lit8 v1, v8, 0x4

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 150
    const/4 v1, 0x0

    .line 151
    .end local v9    # "x":I
    .local v1, "x":I
    add-int/lit8 v10, v10, 0x5e

    move v9, v1

    .line 126
    .end local v0    # "sc":I
    .end local v1    # "x":I
    .restart local v9    # "x":I
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 154
    .end local v8    # "i":I
    :cond_1
    return-void
.end method
