.class final Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;
.super Ljava/lang/Object;
.source "WindowSurface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/WindowSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MovingPoint"
.end annotation


# instance fields
.field dx:F

.field dy:F

.field x:F

.field y:F


# direct methods
.method constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method adjDelta(FFF)F
    .locals 6
    .param p1, "cur"    # F
    .param p2, "minStep"    # F
    .param p3, "maxStep"    # F

    .line 110
    float-to-double v0, p1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p2, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    double-to-float p1, v0

    .line 111
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    neg-float v1, p2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    neg-float p1, p2

    .line 112
    :cond_0
    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    cmpg-float v0, p1, p2

    if-gez v0, :cond_1

    move p1, p2

    .line 113
    :cond_1
    cmpl-float v0, p1, p3

    if-lez v0, :cond_2

    move p1, p3

    .line 114
    :cond_2
    neg-float v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    neg-float p1, p3

    .line 115
    :cond_3
    return p1
.end method

.method init(IIF)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "minStep"    # F

    .line 103
    add-int/lit8 v0, p1, -0x1

    int-to-double v0, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    iput v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->x:F

    .line 104
    add-int/lit8 v0, p2, -0x1

    int-to-double v0, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    iput v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->y:F

    .line 105
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v2

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->dx:F

    .line 106
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    float-to-double v6, p3

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    mul-double v4, v4, v2

    double-to-float v0, v4

    add-float/2addr v0, v1

    iput v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->dy:F

    .line 107
    return-void
.end method

.method step(IIFF)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "minStep"    # F
    .param p4, "maxStep"    # F

    .line 119
    iget v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->x:F

    iget v1, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->dx:F

    add-float/2addr v0, v1

    iput v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->x:F

    .line 120
    iget v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->x:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-lez v2, :cond_0

    add-int/lit8 v2, p1, -0x1

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3

    .line 121
    :cond_0
    iget v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->x:F

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_1

    iput v1, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->x:F

    goto :goto_0

    .line 122
    :cond_1
    add-int/lit8 v2, p1, -0x1

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    add-int/lit8 v0, p1, -0x1

    int-to-float v0, v0

    iput v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->x:F

    .line 123
    :cond_2
    :goto_0
    iget v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->dx:F

    neg-float v0, v0

    invoke-virtual {p0, v0, p3, p4}, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->adjDelta(FFF)F

    move-result v0

    iput v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->dx:F

    .line 125
    :cond_3
    iget v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->y:F

    iget v2, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->dy:F

    add-float/2addr v0, v2

    iput v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->y:F

    .line 126
    iget v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->y:F

    cmpg-float v2, v0, v1

    if-lez v2, :cond_4

    add-int/lit8 v2, p2, -0x1

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_7

    .line 127
    :cond_4
    iget v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->y:F

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_5

    iput v1, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->y:F

    goto :goto_1

    .line 128
    :cond_5
    add-int/lit8 v1, p2, -0x1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6

    add-int/lit8 v0, p2, -0x1

    int-to-float v0, v0

    iput v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->y:F

    .line 129
    :cond_6
    :goto_1
    iget v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->dy:F

    neg-float v0, v0

    invoke-virtual {p0, v0, p3, p4}, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->adjDelta(FFF)F

    move-result v0

    iput v0, p0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->dy:F

    .line 131
    :cond_7
    return-void
.end method
