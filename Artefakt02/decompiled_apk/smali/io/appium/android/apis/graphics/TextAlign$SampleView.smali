.class Lio/appium/android/apis/graphics/TextAlign$SampleView;
.super Landroid/view/View;
.source "TextAlign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/TextAlign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# static fields
.field private static final DY:I = 0x1e

.field private static final POSTEXT:Ljava/lang/String; = "Positioned"

.field private static final TEXTONPATH:Ljava/lang/String; = "Along a path"

.field private static final TEXT_C:Ljava/lang/String; = "Center"

.field private static final TEXT_L:Ljava/lang/String; = "Left"

.field private static final TEXT_R:Ljava/lang/String; = "Right"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPathPaint:Landroid/graphics/Paint;

.field private mPos:[F

.field private mX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/TextAlign$SampleView;->setFocusable(Z)V

    .line 71
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 72
    iget-object v1, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    iget-object v1, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 74
    iget-object v1, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 76
    const-string v1, "Positioned"

    iget-object v2, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v2}, Lio/appium/android/apis/graphics/TextAlign$SampleView;->buildTextPositions(Ljava/lang/String;FLandroid/graphics/Paint;)[F

    move-result-object v1

    iput-object v1, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPos:[F

    .line 78
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPath:Landroid/graphics/Path;

    .line 79
    iget-object v1, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPath:Landroid/graphics/Path;

    invoke-static {v1}, Lio/appium/android/apis/graphics/TextAlign$SampleView;->makePath(Landroid/graphics/Path;)V

    .line 81
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPathPaint:Landroid/graphics/Paint;

    .line 82
    iget-object v1, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget-object v0, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPathPaint:Landroid/graphics/Paint;

    const v1, -0x7fffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object v0, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    return-void
.end method

.method private buildTextPositions(Ljava/lang/String;FLandroid/graphics/Paint;)[F
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "y"    # F
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [F

    .line 55
    .local v0, "widths":[F
    invoke-virtual {p3, p1, v0}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    move-result v1

    .line 57
    .local v1, "n":I
    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [F

    .line 58
    .local v2, "pos":[F
    const/4 v3, 0x0

    .line 59
    .local v3, "accumulatedX":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 60
    mul-int/lit8 v5, v4, 0x2

    add-int/lit8 v5, v5, 0x0

    aput v3, v2, v5

    .line 61
    mul-int/lit8 v5, v4, 0x2

    add-int/lit8 v5, v5, 0x1

    aput p2, v2, v5

    .line 62
    aget v5, v0, v4

    add-float/2addr v3, v5

    .line 59
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 64
    .end local v4    # "i":I
    :cond_0
    return-object v2
.end method

.method private static makePath(Landroid/graphics/Path;)V
    .locals 9
    .param p0, "p"    # Landroid/graphics/Path;

    .line 48
    const/high16 v0, 0x41200000    # 10.0f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 49
    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v4, -0x3db80000    # -50.0f

    const/high16 v5, 0x43480000    # 200.0f

    const/high16 v6, 0x42480000    # 50.0f

    const/high16 v7, 0x43960000    # 300.0f

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 50
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 88
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const/4 v1, -0x1

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 90
    iget-object v8, v0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 91
    .local v8, "p":Landroid/graphics/Paint;
    iget v9, v0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mX:F

    .line 92
    .local v9, "x":F
    const/4 v10, 0x0

    .line 93
    .local v10, "y":F
    iget-object v11, v0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPos:[F

    .line 97
    .local v11, "pos":[F
    const/high16 v1, -0x7f010000

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    const/high16 v1, 0x42b40000    # 90.0f

    add-float v5, v10, v1

    move-object/from16 v1, p1

    move v2, v9

    move v3, v10

    move v4, v9

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 99
    const/high16 v12, -0x1000000

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    const/high16 v13, 0x41f00000    # 30.0f

    const/4 v14, 0x0

    invoke-virtual {v7, v14, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 102
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 103
    const-string v1, "Left"

    invoke-virtual {v7, v1, v9, v10, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 105
    invoke-virtual {v7, v14, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 106
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 107
    const-string v1, "Center"

    invoke-virtual {v7, v1, v9, v10, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 109
    invoke-virtual {v7, v14, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 110
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 111
    const-string v1, "Right"

    invoke-virtual {v7, v1, v9, v10, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 113
    const/high16 v15, 0x42700000    # 60.0f

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v7, v1, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 117
    const v1, -0x44ff0100

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    const/4 v1, 0x0

    move v6, v1

    .local v6, "i":I
    :goto_0
    array-length v1, v11

    div-int/lit8 v1, v1, 0x2

    if-ge v6, v1, :cond_0

    .line 119
    mul-int/lit8 v1, v6, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v2, v11, v1

    mul-int/lit8 v1, v6, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v1, v11, v1

    sub-float v3, v1, v13

    mul-int/lit8 v1, v6, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v4, v11, v1

    mul-int/lit8 v1, v6, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v1, v11, v1

    add-float v5, v1, v15

    move-object/from16 v1, p1

    move/from16 v16, v6

    .end local v6    # "i":I
    .local v16, "i":I
    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 118
    add-int/lit8 v6, v16, 0x1

    goto :goto_0

    .end local v16    # "i":I
    .restart local v6    # "i":I
    :cond_0
    move/from16 v16, v6

    .line 122
    .end local v6    # "i":I
    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 125
    const-string v1, "Positioned"

    invoke-virtual {v7, v1, v11, v8}, Landroid/graphics/Canvas;->drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V

    .line 127
    invoke-virtual {v7, v14, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 128
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 129
    const-string v1, "Positioned"

    invoke-virtual {v7, v1, v11, v8}, Landroid/graphics/Canvas;->drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V

    .line 131
    invoke-virtual {v7, v14, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 132
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 133
    const-string v1, "Positioned"

    invoke-virtual {v7, v1, v11, v8}, Landroid/graphics/Canvas;->drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V

    .line 137
    const/high16 v1, -0x3d380000    # -100.0f

    invoke-virtual {v7, v1, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 139
    iget-object v1, v0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPath:Landroid/graphics/Path;

    iget-object v2, v0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 140
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 141
    const-string v2, "Along a path"

    iget-object v3, v0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPath:Landroid/graphics/Path;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 143
    const/high16 v12, 0x42340000    # 45.0f

    invoke-virtual {v7, v14, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 144
    iget-object v1, v0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPath:Landroid/graphics/Path;

    iget-object v2, v0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 145
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 146
    const-string v2, "Along a path"

    iget-object v3, v0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPath:Landroid/graphics/Path;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 148
    invoke-virtual {v7, v14, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 149
    iget-object v1, v0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPath:Landroid/graphics/Path;

    iget-object v2, v0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 150
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 151
    const-string v2, "Along a path"

    iget-object v3, v0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mPath:Landroid/graphics/Path;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 152
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "ow"    # I
    .param p4, "oh"    # I

    .line 156
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 157
    int-to-float v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    iput v0, p0, Lio/appium/android/apis/graphics/TextAlign$SampleView;->mX:F

    .line 158
    return-void
.end method
