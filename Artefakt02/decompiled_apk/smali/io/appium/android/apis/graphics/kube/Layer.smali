.class public Lio/appium/android/apis/graphics/kube/Layer;
.super Ljava/lang/Object;
.source "Layer.java"


# static fields
.field public static final kAxisX:I = 0x0

.field public static final kAxisY:I = 0x1

.field public static final kAxisZ:I = 0x2


# instance fields
.field mAxis:I

.field mShapes:[Lio/appium/android/apis/graphics/kube/GLShape;

.field mTransform:Lio/appium/android/apis/graphics/kube/M4;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "axis"    # I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/16 v0, 0x9

    new-array v0, v0, [Lio/appium/android/apis/graphics/kube/GLShape;

    iput-object v0, p0, Lio/appium/android/apis/graphics/kube/Layer;->mShapes:[Lio/appium/android/apis/graphics/kube/GLShape;

    .line 92
    new-instance v0, Lio/appium/android/apis/graphics/kube/M4;

    invoke-direct {v0}, Lio/appium/android/apis/graphics/kube/M4;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/kube/Layer;->mTransform:Lio/appium/android/apis/graphics/kube/M4;

    .line 23
    iput p1, p0, Lio/appium/android/apis/graphics/kube/Layer;->mAxis:I

    .line 24
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Layer;->mTransform:Lio/appium/android/apis/graphics/kube/M4;

    invoke-virtual {v0}, Lio/appium/android/apis/graphics/kube/M4;->setIdentity()V

    .line 25
    return-void
.end method


# virtual methods
.method public endAnimation()V
    .locals 3

    .line 37
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lio/appium/android/apis/graphics/kube/Layer;->mShapes:[Lio/appium/android/apis/graphics/kube/GLShape;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 38
    aget-object v1, v1, v0

    .line 39
    .local v1, "shape":Lio/appium/android/apis/graphics/kube/GLShape;
    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {v1}, Lio/appium/android/apis/graphics/kube/GLShape;->endAnimation()V

    .line 37
    .end local v1    # "shape":Lio/appium/android/apis/graphics/kube/GLShape;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setAngle(F)V
    .locals 12
    .param p1, "angle"    # F

    .line 47
    const v0, 0x40c90fdb

    .line 48
    .local v0, "twopi":F
    :goto_0
    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    sub-float/2addr p1, v0

    goto :goto_0

    .line 49
    :cond_0
    :goto_1
    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_1

    add-float/2addr p1, v0

    goto :goto_1

    .line 52
    :cond_1
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 53
    .local v2, "sin":F
    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 55
    .local v3, "cos":F
    iget-object v4, p0, Lio/appium/android/apis/graphics/kube/Layer;->mTransform:Lio/appium/android/apis/graphics/kube/M4;

    iget-object v4, v4, Lio/appium/android/apis/graphics/kube/M4;->m:[[F

    .line 56
    .local v4, "m":[[F
    iget v5, p0, Lio/appium/android/apis/graphics/kube/Layer;->mAxis:I

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    .line 74
    :pswitch_0
    aget-object v5, v4, v7

    aput v3, v5, v7

    .line 75
    aget-object v5, v4, v7

    aput v2, v5, v9

    .line 76
    aget-object v5, v4, v9

    neg-float v10, v2

    aput v10, v5, v7

    .line 77
    aget-object v5, v4, v9

    aput v3, v5, v9

    .line 78
    aget-object v5, v4, v8

    aput v6, v5, v8

    .line 79
    aget-object v5, v4, v8

    aget-object v6, v4, v8

    aget-object v10, v4, v7

    aget-object v11, v4, v9

    aput v1, v11, v8

    aput v1, v10, v8

    aput v1, v6, v9

    aput v1, v5, v7

    goto :goto_2

    .line 66
    :pswitch_1
    aget-object v5, v4, v7

    aput v3, v5, v7

    .line 67
    aget-object v5, v4, v7

    aput v2, v5, v8

    .line 68
    aget-object v5, v4, v8

    neg-float v10, v2

    aput v10, v5, v7

    .line 69
    aget-object v5, v4, v8

    aput v3, v5, v8

    .line 70
    aget-object v5, v4, v9

    aput v6, v5, v9

    .line 71
    aget-object v5, v4, v7

    aget-object v6, v4, v9

    aget-object v10, v4, v9

    aget-object v11, v4, v8

    aput v1, v11, v9

    aput v1, v10, v8

    aput v1, v6, v7

    aput v1, v5, v9

    .line 72
    goto :goto_2

    .line 58
    :pswitch_2
    aget-object v5, v4, v9

    aput v3, v5, v9

    .line 59
    aget-object v5, v4, v9

    aput v2, v5, v8

    .line 60
    aget-object v5, v4, v8

    neg-float v10, v2

    aput v10, v5, v9

    .line 61
    aget-object v5, v4, v8

    aput v3, v5, v8

    .line 62
    aget-object v5, v4, v7

    aput v6, v5, v7

    .line 63
    aget-object v5, v4, v7

    aget-object v6, v4, v7

    aget-object v10, v4, v9

    aget-object v11, v4, v8

    aput v1, v11, v7

    aput v1, v10, v7

    aput v1, v6, v8

    aput v1, v5, v9

    .line 64
    nop

    .line 83
    :goto_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v5, p0, Lio/appium/android/apis/graphics/kube/Layer;->mShapes:[Lio/appium/android/apis/graphics/kube/GLShape;

    array-length v6, v5

    if-ge v1, v6, :cond_3

    .line 84
    aget-object v5, v5, v1

    .line 85
    .local v5, "shape":Lio/appium/android/apis/graphics/kube/GLShape;
    if-eqz v5, :cond_2

    .line 86
    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/Layer;->mTransform:Lio/appium/android/apis/graphics/kube/M4;

    invoke-virtual {v5, v6}, Lio/appium/android/apis/graphics/kube/GLShape;->animateTransform(Lio/appium/android/apis/graphics/kube/M4;)V

    .line 83
    .end local v5    # "shape":Lio/appium/android/apis/graphics/kube/GLShape;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 89
    .end local v1    # "i":I
    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startAnimation()V
    .locals 3

    .line 28
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lio/appium/android/apis/graphics/kube/Layer;->mShapes:[Lio/appium/android/apis/graphics/kube/GLShape;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 29
    aget-object v1, v1, v0

    .line 30
    .local v1, "shape":Lio/appium/android/apis/graphics/kube/GLShape;
    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {v1}, Lio/appium/android/apis/graphics/kube/GLShape;->startAnimation()V

    .line 28
    .end local v1    # "shape":Lio/appium/android/apis/graphics/kube/GLShape;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
