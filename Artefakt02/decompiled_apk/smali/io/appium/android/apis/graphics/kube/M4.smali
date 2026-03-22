.class public Lio/appium/android/apis/graphics/kube/M4;
.super Ljava/lang/Object;
.source "M4.java"


# instance fields
.field public m:[[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x4

    filled-new-array {v0, v0}, [I

    move-result-object v0

    const-class v1, F

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lio/appium/android/apis/graphics/kube/M4;->m:[[F

    .line 28
    return-void
.end method

.method public constructor <init>(Lio/appium/android/apis/graphics/kube/M4;)V
    .locals 5
    .param p1, "other"    # Lio/appium/android/apis/graphics/kube/M4;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x4

    filled-new-array {v0, v0}, [I

    move-result-object v1

    const-class v2, F

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Lio/appium/android/apis/graphics/kube/M4;->m:[[F

    .line 31
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 32
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 33
    iget-object v3, p0, Lio/appium/android/apis/graphics/kube/M4;->m:[[F

    aget-object v3, v3, v1

    iget-object v4, p1, Lio/appium/android/apis/graphics/kube/M4;->m:[[F

    aget-object v4, v4, v1

    aget v4, v4, v2

    aput v4, v3, v2

    .line 32
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 31
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    .end local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public multiply(Lio/appium/android/apis/graphics/kube/M4;)Lio/appium/android/apis/graphics/kube/M4;
    .locals 10
    .param p1, "other"    # Lio/appium/android/apis/graphics/kube/M4;

    .line 45
    new-instance v0, Lio/appium/android/apis/graphics/kube/M4;

    invoke-direct {v0}, Lio/appium/android/apis/graphics/kube/M4;-><init>()V

    .line 46
    .local v0, "result":Lio/appium/android/apis/graphics/kube/M4;
    iget-object v1, p0, Lio/appium/android/apis/graphics/kube/M4;->m:[[F

    .line 47
    .local v1, "m1":[[F
    iget-object v2, p1, Lio/appium/android/apis/graphics/kube/M4;->m:[[F

    .line 49
    .local v2, "m2":[[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 50
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v4, :cond_0

    .line 51
    iget-object v6, v0, Lio/appium/android/apis/graphics/kube/M4;->m:[[F

    aget-object v6, v6, v3

    aget-object v7, v1, v3

    const/4 v8, 0x0

    aget v7, v7, v8

    aget-object v8, v2, v8

    aget v8, v8, v5

    mul-float v7, v7, v8

    aget-object v8, v1, v3

    const/4 v9, 0x1

    aget v8, v8, v9

    aget-object v9, v2, v9

    aget v9, v9, v5

    mul-float v8, v8, v9

    add-float/2addr v7, v8

    aget-object v8, v1, v3

    const/4 v9, 0x2

    aget v8, v8, v9

    aget-object v9, v2, v9

    aget v9, v9, v5

    mul-float v8, v8, v9

    add-float/2addr v7, v8

    aget-object v8, v1, v3

    const/4 v9, 0x3

    aget v8, v8, v9

    aget-object v9, v2, v9

    aget v9, v9, v5

    mul-float v8, v8, v9

    add-float/2addr v7, v8

    aput v7, v6, v5

    .line 50
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 49
    .end local v5    # "j":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    .end local v3    # "i":I
    :cond_1
    return-object v0
.end method

.method public multiply(Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;)V
    .locals 8
    .param p1, "src"    # Lio/appium/android/apis/graphics/kube/GLVertex;
    .param p2, "dest"    # Lio/appium/android/apis/graphics/kube/GLVertex;

    .line 39
    iget v0, p1, Lio/appium/android/apis/graphics/kube/GLVertex;->x:F

    iget-object v1, p0, Lio/appium/android/apis/graphics/kube/M4;->m:[[F

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget v1, v1, v2

    mul-float v0, v0, v1

    iget v1, p1, Lio/appium/android/apis/graphics/kube/GLVertex;->y:F

    iget-object v3, p0, Lio/appium/android/apis/graphics/kube/M4;->m:[[F

    const/4 v4, 0x1

    aget-object v3, v3, v4

    aget v3, v3, v2

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    iget v1, p1, Lio/appium/android/apis/graphics/kube/GLVertex;->z:F

    iget-object v3, p0, Lio/appium/android/apis/graphics/kube/M4;->m:[[F

    const/4 v5, 0x2

    aget-object v6, v3, v5

    aget v6, v6, v2

    mul-float v1, v1, v6

    add-float/2addr v0, v1

    const/4 v1, 0x3

    aget-object v3, v3, v1

    aget v3, v3, v2

    add-float/2addr v0, v3

    iput v0, p2, Lio/appium/android/apis/graphics/kube/GLVertex;->x:F

    .line 40
    iget v0, p1, Lio/appium/android/apis/graphics/kube/GLVertex;->x:F

    iget-object v3, p0, Lio/appium/android/apis/graphics/kube/M4;->m:[[F

    aget-object v3, v3, v2

    aget v3, v3, v4

    mul-float v0, v0, v3

    iget v3, p1, Lio/appium/android/apis/graphics/kube/GLVertex;->y:F

    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/M4;->m:[[F

    aget-object v6, v6, v4

    aget v6, v6, v4

    mul-float v3, v3, v6

    add-float/2addr v0, v3

    iget v3, p1, Lio/appium/android/apis/graphics/kube/GLVertex;->z:F

    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/M4;->m:[[F

    aget-object v7, v6, v5

    aget v7, v7, v4

    mul-float v3, v3, v7

    add-float/2addr v0, v3

    aget-object v3, v6, v1

    aget v3, v3, v4

    add-float/2addr v0, v3

    iput v0, p2, Lio/appium/android/apis/graphics/kube/GLVertex;->y:F

    .line 41
    iget v0, p1, Lio/appium/android/apis/graphics/kube/GLVertex;->x:F

    iget-object v3, p0, Lio/appium/android/apis/graphics/kube/M4;->m:[[F

    aget-object v2, v3, v2

    aget v2, v2, v5

    mul-float v0, v0, v2

    iget v2, p1, Lio/appium/android/apis/graphics/kube/GLVertex;->y:F

    iget-object v3, p0, Lio/appium/android/apis/graphics/kube/M4;->m:[[F

    aget-object v3, v3, v4

    aget v3, v3, v5

    mul-float v2, v2, v3

    add-float/2addr v0, v2

    iget v2, p1, Lio/appium/android/apis/graphics/kube/GLVertex;->z:F

    iget-object v3, p0, Lio/appium/android/apis/graphics/kube/M4;->m:[[F

    aget-object v4, v3, v5

    aget v4, v4, v5

    mul-float v2, v2, v4

    add-float/2addr v0, v2

    aget-object v1, v3, v1

    aget v1, v1, v5

    add-float/2addr v0, v1

    iput v0, p2, Lio/appium/android/apis/graphics/kube/GLVertex;->z:F

    .line 42
    return-void
.end method

.method public setIdentity()V
    .locals 5

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 60
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 61
    iget-object v3, p0, Lio/appium/android/apis/graphics/kube/M4;->m:[[F

    aget-object v3, v3, v0

    if-ne v0, v2, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    :goto_2
    aput v4, v3, v2

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 59
    .end local v2    # "j":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 70
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 71
    iget-object v4, p0, Lio/appium/android/apis/graphics/kube/M4;->m:[[F

    aget-object v4, v4, v1

    aget v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 72
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 74
    .end local v3    # "j":I
    :cond_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 75
    const-string v2, "\n  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "i":I
    :cond_2
    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
