.class Lio/appium/android/apis/graphics/PathEffects$SampleView;
.super Landroid/view/View;
.source "PathEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/PathEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# instance fields
.field private mColors:[I

.field private mEffects:[Landroid/graphics/PathEffect;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPhase:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/PathEffects$SampleView;->setFocusable(Z)V

    .line 57
    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/PathEffects$SampleView;->setFocusableInTouchMode(Z)V

    .line 59
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lio/appium/android/apis/graphics/PathEffects$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 60
    iget-object v0, p0, Lio/appium/android/apis/graphics/PathEffects$SampleView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    iget-object v0, p0, Lio/appium/android/apis/graphics/PathEffects$SampleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    invoke-static {}, Lio/appium/android/apis/graphics/PathEffects$SampleView;->makeFollowPath()Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/graphics/PathEffects$SampleView;->mPath:Landroid/graphics/Path;

    .line 65
    const/4 v0, 0x6

    new-array v1, v0, [Landroid/graphics/PathEffect;

    iput-object v1, p0, Lio/appium/android/apis/graphics/PathEffects$SampleView;->mEffects:[Landroid/graphics/PathEffect;

    .line 67
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lio/appium/android/apis/graphics/PathEffects$SampleView;->mColors:[I

    .line 70
    return-void

    :array_0
    .array-data 4
        -0x1000000
        -0x10000
        -0xffff01
        -0xff0100
        -0xff01
        -0x1000000
    .end array-data
.end method

.method private static makeDash(F)Landroid/graphics/PathEffect;
    .locals 2
    .param p0, "phase"    # F

    .line 41
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1, p0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    return-object v0

    :array_0
    .array-data 4
        0x41700000    # 15.0f
        0x40a00000    # 5.0f
        0x41000000    # 8.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private static makeEffects([Landroid/graphics/PathEffect;F)V
    .locals 7
    .param p0, "e"    # [Landroid/graphics/PathEffect;
    .param p1, "phase"    # F

    .line 45
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p0, v0

    .line 46
    new-instance v0, Landroid/graphics/CornerPathEffect;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {v0, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    const/4 v1, 0x1

    aput-object v0, p0, v1

    .line 47
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x4

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-direct {v0, v3, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    const/4 v3, 0x2

    aput-object v0, p0, v3

    .line 48
    new-instance v0, Landroid/graphics/PathDashPathEffect;

    invoke-static {}, Lio/appium/android/apis/graphics/PathEffects$SampleView;->makePathDash()Landroid/graphics/Path;

    move-result-object v4

    sget-object v5, Landroid/graphics/PathDashPathEffect$Style;->ROTATE:Landroid/graphics/PathDashPathEffect$Style;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-direct {v0, v4, v6, p1, v5}, Landroid/graphics/PathDashPathEffect;-><init>(Landroid/graphics/Path;FFLandroid/graphics/PathDashPathEffect$Style;)V

    const/4 v4, 0x3

    aput-object v0, p0, v4

    .line 50
    new-instance v0, Landroid/graphics/ComposePathEffect;

    aget-object v3, p0, v3

    aget-object v5, p0, v1

    invoke-direct {v0, v3, v5}, Landroid/graphics/ComposePathEffect;-><init>(Landroid/graphics/PathEffect;Landroid/graphics/PathEffect;)V

    aput-object v0, p0, v2

    .line 51
    new-instance v0, Landroid/graphics/ComposePathEffect;

    aget-object v2, p0, v4

    aget-object v1, p0, v1

    invoke-direct {v0, v2, v1}, Landroid/graphics/ComposePathEffect;-><init>(Landroid/graphics/PathEffect;Landroid/graphics/PathEffect;)V

    const/4 v1, 0x5

    aput-object v0, p0, v1

    .line 52
    return-void

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private static makeFollowPath()Landroid/graphics/Path;
    .locals 5

    .line 101
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 102
    .local v0, "p":Landroid/graphics/Path;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 103
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xf

    if-gt v1, v2, :cond_0

    .line 104
    mul-int/lit8 v2, v1, 0x14

    int-to-float v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x420c0000    # 35.0f

    mul-float v3, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static makePathDash()Landroid/graphics/Path;
    .locals 5

    .line 110
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 111
    .local v0, "p":Landroid/graphics/Path;
    const/high16 v1, 0x40800000    # 4.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 112
    const/high16 v3, -0x3f800000    # -4.0f

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 113
    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 114
    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 115
    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 116
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 117
    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 73
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 76
    .local v0, "bounds":Landroid/graphics/RectF;
    iget-object v1, p0, Lio/appium/android/apis/graphics/PathEffects$SampleView;->mPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 77
    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x41200000    # 10.0f

    sub-float v1, v2, v1

    iget v3, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 79
    iget-object v1, p0, Lio/appium/android/apis/graphics/PathEffects$SampleView;->mEffects:[Landroid/graphics/PathEffect;

    iget v2, p0, Lio/appium/android/apis/graphics/PathEffects$SampleView;->mPhase:F

    invoke-static {v1, v2}, Lio/appium/android/apis/graphics/PathEffects$SampleView;->makeEffects([Landroid/graphics/PathEffect;F)V

    .line 80
    iget v1, p0, Lio/appium/android/apis/graphics/PathEffects$SampleView;->mPhase:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    iput v1, p0, Lio/appium/android/apis/graphics/PathEffects$SampleView;->mPhase:F

    .line 81
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/PathEffects$SampleView;->invalidate()V

    .line 83
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lio/appium/android/apis/graphics/PathEffects$SampleView;->mEffects:[Landroid/graphics/PathEffect;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 84
    iget-object v3, p0, Lio/appium/android/apis/graphics/PathEffects$SampleView;->mPaint:Landroid/graphics/Paint;

    aget-object v2, v2, v1

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 85
    iget-object v2, p0, Lio/appium/android/apis/graphics/PathEffects$SampleView;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lio/appium/android/apis/graphics/PathEffects$SampleView;->mColors:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v2, p0, Lio/appium/android/apis/graphics/PathEffects$SampleView;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lio/appium/android/apis/graphics/PathEffects$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 87
    const/4 v2, 0x0

    const/high16 v3, 0x41e00000    # 28.0f

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 92
    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    .line 97
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 94
    :cond_0
    invoke-static {}, Lio/appium/android/apis/graphics/PathEffects$SampleView;->makeFollowPath()Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/graphics/PathEffects$SampleView;->mPath:Landroid/graphics/Path;

    .line 95
    const/4 v0, 0x1

    return v0
.end method
