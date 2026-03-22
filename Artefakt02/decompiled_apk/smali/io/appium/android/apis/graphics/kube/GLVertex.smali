.class public Lio/appium/android/apis/graphics/kube/GLVertex;
.super Ljava/lang/Object;
.source "GLVertex.java"


# instance fields
.field color:Lio/appium/android/apis/graphics/kube/GLColor;

.field final index:S

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lio/appium/android/apis/graphics/kube/GLVertex;->x:F

    .line 31
    iput v0, p0, Lio/appium/android/apis/graphics/kube/GLVertex;->y:F

    .line 32
    iput v0, p0, Lio/appium/android/apis/graphics/kube/GLVertex;->z:F

    .line 33
    const/4 v0, -0x1

    iput-short v0, p0, Lio/appium/android/apis/graphics/kube/GLVertex;->index:S

    .line 34
    return-void
.end method

.method constructor <init>(FFFI)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "index"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lio/appium/android/apis/graphics/kube/GLVertex;->x:F

    .line 38
    iput p2, p0, Lio/appium/android/apis/graphics/kube/GLVertex;->y:F

    .line 39
    iput p3, p0, Lio/appium/android/apis/graphics/kube/GLVertex;->z:F

    .line 40
    int-to-short v0, p4

    iput-short v0, p0, Lio/appium/android/apis/graphics/kube/GLVertex;->index:S

    .line 41
    return-void
.end method

.method public static toFixed(F)I
    .locals 1
    .param p0, "x"    # F

    .line 53
    const/high16 v0, 0x47800000    # 65536.0f

    mul-float v0, v0, p0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 45
    instance-of v0, p1, Lio/appium/android/apis/graphics/kube/GLVertex;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 46
    move-object v0, p1

    check-cast v0, Lio/appium/android/apis/graphics/kube/GLVertex;

    .line 47
    .local v0, "v":Lio/appium/android/apis/graphics/kube/GLVertex;
    iget v2, p0, Lio/appium/android/apis/graphics/kube/GLVertex;->x:F

    iget v3, v0, Lio/appium/android/apis/graphics/kube/GLVertex;->x:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lio/appium/android/apis/graphics/kube/GLVertex;->y:F

    iget v3, v0, Lio/appium/android/apis/graphics/kube/GLVertex;->y:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lio/appium/android/apis/graphics/kube/GLVertex;->z:F

    iget v3, v0, Lio/appium/android/apis/graphics/kube/GLVertex;->z:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 49
    .end local v0    # "v":Lio/appium/android/apis/graphics/kube/GLVertex;
    :cond_1
    return v1
.end method

.method public put(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)V
    .locals 1
    .param p1, "vertexBuffer"    # Ljava/nio/IntBuffer;
    .param p2, "colorBuffer"    # Ljava/nio/IntBuffer;

    .line 57
    iget v0, p0, Lio/appium/android/apis/graphics/kube/GLVertex;->x:F

    invoke-static {v0}, Lio/appium/android/apis/graphics/kube/GLVertex;->toFixed(F)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 58
    iget v0, p0, Lio/appium/android/apis/graphics/kube/GLVertex;->y:F

    invoke-static {v0}, Lio/appium/android/apis/graphics/kube/GLVertex;->toFixed(F)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 59
    iget v0, p0, Lio/appium/android/apis/graphics/kube/GLVertex;->z:F

    invoke-static {v0}, Lio/appium/android/apis/graphics/kube/GLVertex;->toFixed(F)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 60
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/GLVertex;->color:Lio/appium/android/apis/graphics/kube/GLColor;

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 62
    invoke-virtual {p2, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 63
    invoke-virtual {p2, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 64
    invoke-virtual {p2, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    goto :goto_0

    .line 66
    :cond_0
    iget v0, v0, Lio/appium/android/apis/graphics/kube/GLColor;->red:I

    invoke-virtual {p2, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 67
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/GLVertex;->color:Lio/appium/android/apis/graphics/kube/GLColor;

    iget v0, v0, Lio/appium/android/apis/graphics/kube/GLColor;->green:I

    invoke-virtual {p2, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 68
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/GLVertex;->color:Lio/appium/android/apis/graphics/kube/GLColor;

    iget v0, v0, Lio/appium/android/apis/graphics/kube/GLColor;->blue:I

    invoke-virtual {p2, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 69
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/GLVertex;->color:Lio/appium/android/apis/graphics/kube/GLColor;

    iget v0, v0, Lio/appium/android/apis/graphics/kube/GLColor;->alpha:I

    invoke-virtual {p2, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 71
    :goto_0
    return-void
.end method

.method public update(Ljava/nio/IntBuffer;Lio/appium/android/apis/graphics/kube/M4;)V
    .locals 2
    .param p1, "vertexBuffer"    # Ljava/nio/IntBuffer;
    .param p2, "transform"    # Lio/appium/android/apis/graphics/kube/M4;

    .line 75
    iget-short v0, p0, Lio/appium/android/apis/graphics/kube/GLVertex;->index:S

    mul-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 77
    if-nez p2, :cond_0

    .line 78
    iget v0, p0, Lio/appium/android/apis/graphics/kube/GLVertex;->x:F

    invoke-static {v0}, Lio/appium/android/apis/graphics/kube/GLVertex;->toFixed(F)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 79
    iget v0, p0, Lio/appium/android/apis/graphics/kube/GLVertex;->y:F

    invoke-static {v0}, Lio/appium/android/apis/graphics/kube/GLVertex;->toFixed(F)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 80
    iget v0, p0, Lio/appium/android/apis/graphics/kube/GLVertex;->z:F

    invoke-static {v0}, Lio/appium/android/apis/graphics/kube/GLVertex;->toFixed(F)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    goto :goto_0

    .line 82
    :cond_0
    new-instance v0, Lio/appium/android/apis/graphics/kube/GLVertex;

    invoke-direct {v0}, Lio/appium/android/apis/graphics/kube/GLVertex;-><init>()V

    .line 83
    .local v0, "temp":Lio/appium/android/apis/graphics/kube/GLVertex;
    invoke-virtual {p2, p0, v0}, Lio/appium/android/apis/graphics/kube/M4;->multiply(Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;)V

    .line 84
    iget v1, v0, Lio/appium/android/apis/graphics/kube/GLVertex;->x:F

    invoke-static {v1}, Lio/appium/android/apis/graphics/kube/GLVertex;->toFixed(F)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 85
    iget v1, v0, Lio/appium/android/apis/graphics/kube/GLVertex;->y:F

    invoke-static {v1}, Lio/appium/android/apis/graphics/kube/GLVertex;->toFixed(F)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 86
    iget v1, v0, Lio/appium/android/apis/graphics/kube/GLVertex;->z:F

    invoke-static {v1}, Lio/appium/android/apis/graphics/kube/GLVertex;->toFixed(F)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 88
    .end local v0    # "temp":Lio/appium/android/apis/graphics/kube/GLVertex;
    :goto_0
    return-void
.end method
