.class Lio/appium/android/apis/graphics/Arcs$SampleView;
.super Landroid/view/View;
.source "Arcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/Arcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# static fields
.field private static final START_INC:F = 15.0f

.field private static final SWEEP_INC:F = 2.0f


# instance fields
.field private mBigIndex:I

.field private mBigOval:Landroid/graphics/RectF;

.field private mFramePaint:Landroid/graphics/Paint;

.field private mOvals:[Landroid/graphics/RectF;

.field private mPaints:[Landroid/graphics/Paint;

.field private mStart:F

.field private mSweep:F

.field private mUseCenters:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/Paint;

    iput-object v1, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    .line 53
    new-array v1, v0, [Z

    iput-object v1, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mUseCenters:[Z

    .line 54
    new-array v0, v0, [Landroid/graphics/RectF;

    iput-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mOvals:[Landroid/graphics/RectF;

    .line 56
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 57
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    aget-object v0, v0, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    aget-object v0, v0, v2

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    aget-object v0, v0, v2

    const/high16 v3, -0x77010000

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mUseCenters:[Z

    aput-boolean v2, v0, v2

    .line 62
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    aget-object v4, v0, v2

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v3, v0, v1

    .line 63
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    aget-object v0, v0, v1

    const v3, -0x77ff0100

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mUseCenters:[Z

    aput-boolean v1, v0, v1

    .line 66
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    aget-object v4, v0, v2

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    const/4 v4, 0x2

    aput-object v3, v0, v4

    .line 67
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    aget-object v0, v0, v4

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    aget-object v0, v0, v4

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    aget-object v0, v0, v4

    const v3, -0x77ffff01

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mUseCenters:[Z

    aput-boolean v2, v0, v4

    .line 72
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    aget-object v5, v0, v4

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    const/4 v5, 0x3

    aput-object v3, v0, v5

    .line 73
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    aget-object v0, v0, v5

    const v3, -0x77777778

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mUseCenters:[Z

    aput-boolean v1, v0, v5

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v3, 0x437a0000    # 250.0f

    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v7, 0x42200000    # 40.0f

    const/high16 v8, 0x438c0000    # 280.0f

    invoke-direct {v0, v7, v6, v8, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mBigOval:Landroid/graphics/RectF;

    .line 78
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mOvals:[Landroid/graphics/RectF;

    new-instance v7, Landroid/graphics/RectF;

    const/high16 v8, 0x43a50000    # 330.0f

    const/high16 v9, 0x43870000    # 270.0f

    const/high16 v10, 0x428c0000    # 70.0f

    invoke-direct {v7, v6, v9, v10, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v7, v0, v2

    .line 79
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mOvals:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    const/high16 v6, 0x42b40000    # 90.0f

    const/high16 v7, 0x43160000    # 150.0f

    invoke-direct {v2, v6, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 80
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mOvals:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    const/high16 v6, 0x432a0000    # 170.0f

    const/high16 v7, 0x43660000    # 230.0f

    invoke-direct {v2, v6, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v4

    .line 81
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mOvals:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    const/high16 v4, 0x439b0000    # 310.0f

    invoke-direct {v2, v3, v9, v4, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v5

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mFramePaint:Landroid/graphics/Paint;

    .line 84
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mFramePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    return-void
.end method

.method private drawArcs(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZLandroid/graphics/Paint;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "oval"    # Landroid/graphics/RectF;
    .param p3, "useCenter"    # Z
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 91
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 92
    iget v3, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mStart:F

    iget v4, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mSweep:F

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 93
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 96
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 98
    iget-object v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mBigOval:Landroid/graphics/RectF;

    iget-object v1, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mUseCenters:[Z

    iget v2, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mBigIndex:I

    aget-boolean v1, v1, v2

    iget-object v3, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    aget-object v2, v3, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lio/appium/android/apis/graphics/Arcs$SampleView;->drawArcs(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZLandroid/graphics/Paint;)V

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 102
    iget-object v1, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mOvals:[Landroid/graphics/RectF;

    aget-object v1, v1, v0

    iget-object v2, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mUseCenters:[Z

    aget-boolean v2, v2, v0

    iget-object v3, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mPaints:[Landroid/graphics/Paint;

    aget-object v3, v3, v0

    invoke-direct {p0, p1, v1, v2, v3}, Lio/appium/android/apis/graphics/Arcs$SampleView;->drawArcs(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZLandroid/graphics/Paint;)V

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "i":I
    :cond_0
    iget v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mSweep:F

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr v0, v1

    iput v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mSweep:F

    .line 106
    iget v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mSweep:F

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    .line 107
    sub-float/2addr v0, v1

    iput v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mSweep:F

    .line 108
    iget v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mStart:F

    const/high16 v2, 0x41700000    # 15.0f

    add-float/2addr v0, v2

    iput v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mStart:F

    .line 109
    iget v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mStart:F

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_1

    .line 110
    sub-float/2addr v0, v1

    iput v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mStart:F

    .line 112
    :cond_1
    iget v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mBigIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mOvals:[Landroid/graphics/RectF;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lio/appium/android/apis/graphics/Arcs$SampleView;->mBigIndex:I

    .line 114
    :cond_2
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/Arcs$SampleView;->invalidate()V

    .line 115
    return-void
.end method
