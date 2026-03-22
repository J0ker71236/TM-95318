.class public Lio/appium/android/apis/graphics/spritetext/MatrixStack;
.super Ljava/lang/Object;
.source "MatrixStack.java"


# static fields
.field private static final DEFAULT_MAX_DEPTH:I = 0x20

.field private static final MATRIX_SIZE:I = 0x10


# instance fields
.field private mMatrix:[F

.field private mTemp:[F

.field private mTop:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->commonInit(I)V

    .line 30
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "maxDepth"    # I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-direct {p0, p1}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->commonInit(I)V

    .line 34
    return-void
.end method

.method private adjust(I)V
    .locals 2
    .param p1, "dir"    # I

    .line 171
    iget v0, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mTop:I

    mul-int/lit8 v1, p1, 0x10

    add-int/2addr v0, v1

    iput v0, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mTop:I

    .line 172
    return-void
.end method

.method private commonInit(I)V
    .locals 1
    .param p1, "maxDepth"    # I

    .line 37
    mul-int/lit8 v0, p1, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mMatrix:[F

    .line 38
    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mTemp:[F

    .line 39
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->glLoadIdentity()V

    .line 40
    return-void
.end method

.method private fixedToFloat(I)F
    .locals 2
    .param p1, "x"    # I

    .line 157
    int-to-float v0, p1

    const/high16 v1, 0x37800000

    mul-float v0, v0, v1

    return v0
.end method

.method private preflight_adjust(I)V
    .locals 3
    .param p1, "dir"    # I

    .line 161
    iget v0, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mTop:I

    mul-int/lit8 v1, p1, 0x10

    add-int/2addr v0, v1

    .line 162
    .local v0, "newTop":I
    if-ltz v0, :cond_1

    .line 165
    add-int/lit8 v1, v0, 0x10

    iget-object v2, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mMatrix:[F

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 168
    return-void

    .line 166
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "stack overflow"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "stack underflow"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getMatrix([FI)V
    .locals 3
    .param p1, "dest"    # [F
    .param p2, "offset"    # I

    .line 153
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mMatrix:[F

    iget v1, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mTop:I

    const/16 v2, 0x10

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    return-void
.end method

.method public glFrustumf(FFFFFF)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F
    .param p5, "near"    # F
    .param p6, "far"    # F

    .line 44
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mMatrix:[F

    iget v1, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mTop:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 45
    return-void
.end method

.method public glFrustumx(IIIIII)V
    .locals 7
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "top"    # I
    .param p5, "near"    # I
    .param p6, "far"    # I

    .line 49
    invoke-direct {p0, p1}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->fixedToFloat(I)F

    move-result v1

    invoke-direct {p0, p2}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->fixedToFloat(I)F

    move-result v2

    .line 50
    invoke-direct {p0, p3}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->fixedToFloat(I)F

    move-result v3

    invoke-direct {p0, p4}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->fixedToFloat(I)F

    move-result v4

    .line 51
    invoke-direct {p0, p5}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->fixedToFloat(I)F

    move-result v5

    invoke-direct {p0, p6}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->fixedToFloat(I)F

    move-result v6

    .line 49
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->glFrustumf(FFFFFF)V

    .line 52
    return-void
.end method

.method public glLoadIdentity()V
    .locals 2

    .line 55
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mMatrix:[F

    iget v1, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mTop:I

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 56
    return-void
.end method

.method public glLoadMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 3
    .param p1, "m"    # Ljava/nio/FloatBuffer;

    .line 63
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mMatrix:[F

    iget v1, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mTop:I

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 64
    return-void
.end method

.method public glLoadMatrixf([FI)V
    .locals 3
    .param p1, "m"    # [F
    .param p2, "offset"    # I

    .line 59
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mMatrix:[F

    iget v1, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mTop:I

    const/16 v2, 0x10

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    return-void
.end method

.method public glLoadMatrixx(Ljava/nio/IntBuffer;)V
    .locals 4
    .param p1, "m"    # Ljava/nio/IntBuffer;

    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 74
    iget-object v1, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mMatrix:[F

    iget v2, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mTop:I

    add-int/2addr v2, v0

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->get()I

    move-result v3

    invoke-direct {p0, v3}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->fixedToFloat(I)F

    move-result v3

    aput v3, v1, v2

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public glLoadMatrixx([II)V
    .locals 4
    .param p1, "m"    # [I
    .param p2, "offset"    # I

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 68
    iget-object v1, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mMatrix:[F

    iget v2, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mTop:I

    add-int/2addr v2, v0

    add-int v3, p2, v0

    aget v3, p1, v3

    invoke-direct {p0, v3}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->fixedToFloat(I)F

    move-result v3

    aput v3, v1, v2

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public glMultMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "m"    # Ljava/nio/FloatBuffer;

    .line 84
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mTemp:[F

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v1}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 85
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mTemp:[F

    invoke-virtual {p0, v0, v1}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->glMultMatrixf([FI)V

    .line 86
    return-void
.end method

.method public glMultMatrixf([FI)V
    .locals 11
    .param p1, "m"    # [F
    .param p2, "offset"    # I

    .line 79
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mMatrix:[F

    iget v1, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mTop:I

    iget-object v2, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mTemp:[F

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    iget-object v5, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mMatrix:[F

    iget v6, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mTop:I

    iget-object v7, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mTemp:[F

    const/4 v8, 0x0

    move-object v9, p1

    move v10, p2

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 81
    return-void
.end method

.method public glMultMatrixx(Ljava/nio/IntBuffer;)V
    .locals 4
    .param p1, "m"    # Ljava/nio/IntBuffer;

    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 97
    iget-object v1, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mTemp:[F

    add-int/lit8 v2, v0, 0x10

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->get()I

    move-result v3

    invoke-direct {p0, v3}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->fixedToFloat(I)F

    move-result v3

    aput v3, v1, v2

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mTemp:[F

    invoke-virtual {p0, v0, v1}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->glMultMatrixf([FI)V

    .line 100
    return-void
.end method

.method public glMultMatrixx([II)V
    .locals 4
    .param p1, "m"    # [I
    .param p2, "offset"    # I

    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 90
    iget-object v1, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mTemp:[F

    add-int/lit8 v2, v0, 0x10

    add-int v3, p2, v0

    aget v3, p1, v3

    invoke-direct {p0, v3}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->fixedToFloat(I)F

    move-result v3

    aput v3, v1, v2

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mTemp:[F

    invoke-virtual {p0, v0, v1}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->glMultMatrixf([FI)V

    .line 93
    return-void
.end method

.method public glOrthof(FFFFFF)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F
    .param p5, "near"    # F
    .param p6, "far"    # F

    .line 104
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mMatrix:[F

    iget v1, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mTop:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 105
    return-void
.end method

.method public glOrthox(IIIIII)V
    .locals 7
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "top"    # I
    .param p5, "near"    # I
    .param p6, "far"    # I

    .line 109
    invoke-direct {p0, p1}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->fixedToFloat(I)F

    move-result v1

    invoke-direct {p0, p2}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->fixedToFloat(I)F

    move-result v2

    .line 110
    invoke-direct {p0, p3}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->fixedToFloat(I)F

    move-result v3

    invoke-direct {p0, p4}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->fixedToFloat(I)F

    move-result v4

    .line 111
    invoke-direct {p0, p5}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->fixedToFloat(I)F

    move-result v5

    invoke-direct {p0, p6}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->fixedToFloat(I)F

    move-result v6

    .line 109
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->glOrthof(FFFFFF)V

    .line 112
    return-void
.end method

.method public glPopMatrix()V
    .locals 1

    .line 115
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->preflight_adjust(I)V

    .line 116
    invoke-direct {p0, v0}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->adjust(I)V

    .line 117
    return-void
.end method

.method public glPushMatrix()V
    .locals 5

    .line 120
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->preflight_adjust(I)V

    .line 121
    iget-object v1, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mMatrix:[F

    iget v2, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mTop:I

    add-int/lit8 v3, v2, 0x10

    const/16 v4, 0x10

    invoke-static {v1, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    invoke-direct {p0, v0}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->adjust(I)V

    .line 124
    return-void
.end method

.method public glRotatef(FFFF)V
    .locals 10
    .param p1, "angle"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .line 127
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mTemp:[F

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 128
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mMatrix:[F

    iget v1, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mTop:I

    iget-object v2, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mTemp:[F

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget-object v4, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mMatrix:[F

    iget v5, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mTop:I

    iget-object v8, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mTemp:[F

    const/16 v7, 0x10

    const/4 v9, 0x0

    move-object v6, v8

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 130
    return-void
.end method

.method public glRotatex(IIII)V
    .locals 4
    .param p1, "angle"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I

    .line 133
    int-to-float v0, p1

    invoke-direct {p0, p2}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->fixedToFloat(I)F

    move-result v1

    invoke-direct {p0, p3}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->fixedToFloat(I)F

    move-result v2

    invoke-direct {p0, p4}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->fixedToFloat(I)F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->glRotatef(FFFF)V

    .line 134
    return-void
.end method

.method public glScalef(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 137
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mMatrix:[F

    iget v1, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mTop:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 138
    return-void
.end method

.method public glScalex(III)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .line 141
    invoke-direct {p0, p1}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->fixedToFloat(I)F

    move-result v0

    invoke-direct {p0, p2}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->fixedToFloat(I)F

    move-result v1

    invoke-direct {p0, p3}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->fixedToFloat(I)F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->glScalef(FFF)V

    .line 142
    return-void
.end method

.method public glTranslatef(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 145
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mMatrix:[F

    iget v1, p0, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->mTop:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 146
    return-void
.end method

.method public glTranslatex(III)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .line 149
    invoke-direct {p0, p1}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->fixedToFloat(I)F

    move-result v0

    invoke-direct {p0, p2}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->fixedToFloat(I)F

    move-result v1

    invoke-direct {p0, p3}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->fixedToFloat(I)F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lio/appium/android/apis/graphics/spritetext/MatrixStack;->glTranslatef(FFF)V

    .line 150
    return-void
.end method
