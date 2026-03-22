.class Lio/appium/android/apis/graphics/MeasureText$SampleView;
.super Landroid/view/View;
.source "MeasureText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/MeasureText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# instance fields
.field private mOriginX:F

.field private mOriginY:F

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 52
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mOriginX:F

    .line 53
    const/high16 v0, 0x42a00000    # 80.0f

    iput v0, p0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mOriginY:F

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/MeasureText$SampleView;->setFocusable(Z)V

    .line 59
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 60
    iget-object v1, p0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    iget-object v0, p0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    iget-object v0, p0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 63
    iget-object v0, p0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42800000    # 64.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 64
    iget-object v0, p0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 66
    return-void
.end method

.method private showText(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint$Align;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "align"    # Landroid/graphics/Paint$Align;

    .line 71
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v9, v1

    .line 72
    .local v9, "bounds":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    new-array v10, v1, [F

    .line 74
    .local v10, "widths":[F
    iget-object v1, v0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v11, 0x0

    invoke-virtual {v1, v8, v11, v2, v10}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v12

    .line 75
    .local v12, "count":I
    iget-object v1, v0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v8, v11, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v13

    .line 76
    .local v13, "w":F
    iget-object v1, v0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v8, v11, v2, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 78
    iget-object v1, v0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    const v2, -0x770078

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v1, v0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v9, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 80
    iget-object v1, v0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v1, v0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v7, v8, v2, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 83
    mul-int/lit8 v1, v12, 0x2

    add-int/lit8 v1, v1, 0x2

    new-array v14, v1, [F

    .line 84
    .local v14, "pts":[F
    const/4 v1, 0x0

    .line 85
    .local v1, "x":F
    const/4 v15, 0x0

    .line 86
    .local v15, "y":F
    aput v1, v14, v11

    .line 87
    const/16 v16, 0x1

    aput v15, v14, v16

    .line 88
    const/4 v3, 0x0

    move/from16 v17, v1

    .end local v1    # "x":F
    .local v3, "i":I
    .local v17, "x":F
    :goto_0
    if-ge v3, v12, :cond_0

    .line 89
    aget v1, v10, v3

    add-float v17, v17, v1

    .line 90
    mul-int/lit8 v1, v3, 0x2

    add-int/lit8 v1, v1, 0x2

    aput v17, v14, v1

    .line 91
    mul-int/lit8 v1, v3, 0x2

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aput v15, v14, v1

    .line 88
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 93
    .end local v3    # "i":I
    :cond_0
    iget-object v1, v0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x10000

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v1, v0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v6, v0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v4, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 96
    iget-object v1, v0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 97
    add-int/lit8 v1, v12, 0x1

    shl-int/lit8 v1, v1, 0x1

    iget-object v2, v0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v14, v11, v1, v2}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 98
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 101
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 103
    iget v0, p0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mOriginX:F

    iget v1, p0, Lio/appium/android/apis/graphics/MeasureText$SampleView;->mOriginY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 105
    const-string v0, "Measure"

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-direct {p0, p1, v0, v1}, Lio/appium/android/apis/graphics/MeasureText$SampleView;->showText(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint$Align;)V

    .line 106
    const/high16 v0, 0x42a00000    # 80.0f

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 107
    const-string v2, "wiggy!"

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-direct {p0, p1, v2, v3}, Lio/appium/android/apis/graphics/MeasureText$SampleView;->showText(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint$Align;)V

    .line 108
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 109
    const-string v0, "Text"

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-direct {p0, p1, v0, v1}, Lio/appium/android/apis/graphics/MeasureText$SampleView;->showText(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint$Align;)V

    .line 110
    return-void
.end method
