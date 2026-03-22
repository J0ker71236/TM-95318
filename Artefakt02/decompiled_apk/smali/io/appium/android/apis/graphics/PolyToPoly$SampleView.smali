.class Lio/appium/android/apis/graphics/PolyToPoly$SampleView;
.super Landroid/view/View;
.source "PolyToPoly.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/PolyToPoly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# instance fields
.field private mFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/PolyToPoly$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/PolyToPoly$SampleView;->mMatrix:Landroid/graphics/Matrix;

    .line 68
    iget-object v0, p0, Lio/appium/android/apis/graphics/PolyToPoly$SampleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    iget-object v0, p0, Lio/appium/android/apis/graphics/PolyToPoly$SampleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 71
    iget-object v0, p0, Lio/appium/android/apis/graphics/PolyToPoly$SampleView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 72
    iget-object v0, p0, Lio/appium/android/apis/graphics/PolyToPoly$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/graphics/PolyToPoly$SampleView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 73
    return-void
.end method

.method private doDraw(Landroid/graphics/Canvas;[F[F)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "src"    # [F
    .param p3, "dst"    # [F

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 43
    iget-object v0, p0, Lio/appium/android/apis/graphics/PolyToPoly$SampleView;->mMatrix:Landroid/graphics/Matrix;

    array-length v1, p2

    shr-int/lit8 v5, v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 44
    iget-object v0, p0, Lio/appium/android/apis/graphics/PolyToPoly$SampleView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 46
    iget-object v0, p0, Lio/appium/android/apis/graphics/PolyToPoly$SampleView;->mPaint:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    iget-object v0, p0, Lio/appium/android/apis/graphics/PolyToPoly$SampleView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    iget-object v5, p0, Lio/appium/android/apis/graphics/PolyToPoly$SampleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x42800000    # 64.0f

    const/high16 v4, 0x42800000    # 64.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 49
    iget-object v5, p0, Lio/appium/android/apis/graphics/PolyToPoly$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 50
    iget-object v5, p0, Lio/appium/android/apis/graphics/PolyToPoly$SampleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x42800000    # 64.0f

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 52
    iget-object v0, p0, Lio/appium/android/apis/graphics/PolyToPoly$SampleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lio/appium/android/apis/graphics/PolyToPoly$SampleView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    const/high16 v0, 0x42000000    # 32.0f

    .line 58
    .local v0, "x":F
    iget-object v1, p0, Lio/appium/android/apis/graphics/PolyToPoly$SampleView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget-object v2, p0, Lio/appium/android/apis/graphics/PolyToPoly$SampleView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x42000000    # 32.0f

    sub-float/2addr v2, v1

    .line 59
    .local v2, "y":F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lio/appium/android/apis/graphics/PolyToPoly$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 62
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 77
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 80
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 82
    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-direct {p0, p1, v2, v1}, Lio/appium/android/apis/graphics/PolyToPoly$SampleView;->doDraw(Landroid/graphics/Canvas;[F[F)V

    .line 83
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 86
    const/high16 v1, 0x43200000    # 160.0f

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 88
    const/4 v2, 0x4

    new-array v3, v2, [F

    fill-array-data v3, :array_2

    new-array v2, v2, [F

    fill-array-data v2, :array_3

    invoke-direct {p0, p1, v3, v2}, Lio/appium/android/apis/graphics/PolyToPoly$SampleView;->doDraw(Landroid/graphics/Canvas;[F[F)V

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 92
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 93
    const/high16 v2, 0x42dc0000    # 110.0f

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 95
    const/4 v0, 0x6

    new-array v3, v0, [F

    fill-array-data v3, :array_4

    new-array v0, v0, [F

    fill-array-data v0, :array_5

    invoke-direct {p0, p1, v3, v0}, Lio/appium/android/apis/graphics/PolyToPoly$SampleView;->doDraw(Landroid/graphics/Canvas;[F[F)V

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 99
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 100
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 102
    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_6

    new-array v0, v0, [F

    fill-array-data v0, :array_7

    invoke-direct {p0, p1, v1, v0}, Lio/appium/android/apis/graphics/PolyToPoly$SampleView;->doDraw(Landroid/graphics/Canvas;[F[F)V

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 105
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_2
    .array-data 4
        0x42000000    # 32.0f
        0x42000000    # 32.0f
        0x42800000    # 64.0f
        0x42000000    # 32.0f
    .end array-data

    :array_3
    .array-data 4
        0x42000000    # 32.0f
        0x42000000    # 32.0f
        0x42800000    # 64.0f
        0x42400000    # 48.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x42800000    # 64.0f
        0x0
        0x0
        0x42800000    # 64.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x42c00000    # 96.0f
        0x0
        0x41c00000    # 24.0f
        0x42800000    # 64.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x0
        0x42800000    # 64.0f
        0x0
        0x42800000    # 64.0f
        0x42800000    # 64.0f
        0x0
        0x42800000    # 64.0f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
        0x42c00000    # 96.0f
        0x0
        0x42800000    # 64.0f
        0x42c00000    # 96.0f
        0x0
        0x42800000    # 64.0f
    .end array-data
.end method
