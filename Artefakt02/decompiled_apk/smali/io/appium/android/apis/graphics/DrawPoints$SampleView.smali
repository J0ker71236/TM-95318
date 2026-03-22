.class Lio/appium/android/apis/graphics/DrawPoints$SampleView;
.super Landroid/view/View;
.source "DrawPoints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/DrawPoints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# static fields
.field private static final SEGS:I = 0x20

.field private static final SIZE:F = 300.0f

.field private static final X:I = 0x0

.field private static final Y:I = 0x1


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mPts:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/DrawPoints$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 59
    invoke-direct {p0}, Lio/appium/android/apis/graphics/DrawPoints$SampleView;->buildPoints()V

    .line 60
    return-void
.end method

.method private buildPoints()V
    .locals 7

    .line 42
    const/16 v0, 0x42

    .line 43
    .local v0, "ptCount":I
    const/16 v1, 0x84

    new-array v1, v1, [F

    iput-object v1, p0, Lio/appium/android/apis/graphics/DrawPoints$SampleView;->mPts:[F

    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, "value":F
    const/high16 v2, 0x41160000    # 9.375f

    .line 47
    .local v2, "delta":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x20

    if-gt v3, v4, :cond_0

    .line 48
    iget-object v4, p0, Lio/appium/android/apis/graphics/DrawPoints$SampleView;->mPts:[F

    mul-int/lit8 v5, v3, 0x4

    add-int/lit8 v5, v5, 0x0

    const/high16 v6, 0x43960000    # 300.0f

    sub-float/2addr v6, v1

    aput v6, v4, v5

    .line 49
    mul-int/lit8 v5, v3, 0x4

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 50
    mul-int/lit8 v5, v3, 0x4

    add-int/lit8 v5, v5, 0x0

    add-int/lit8 v5, v5, 0x2

    aput v6, v4, v5

    .line 51
    mul-int/lit8 v5, v3, 0x4

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x2

    aput v1, v4, v5

    .line 52
    const/high16 v4, 0x41160000    # 9.375f

    add-float/2addr v1, v4

    .line 47
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    .end local v3    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 63
    iget-object v0, p0, Lio/appium/android/apis/graphics/DrawPoints$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 65
    .local v0, "paint":Landroid/graphics/Paint;
    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 67
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 69
    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    iget-object v1, p0, Lio/appium/android/apis/graphics/DrawPoints$SampleView;->mPts:[F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 73
    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    iget-object v1, p0, Lio/appium/android/apis/graphics/DrawPoints$SampleView;->mPts:[F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPoints([FLandroid/graphics/Paint;)V

    .line 76
    return-void
.end method
