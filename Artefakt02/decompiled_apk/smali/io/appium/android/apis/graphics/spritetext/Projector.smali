.class Lio/appium/android/apis/graphics/spritetext/Projector;
.super Ljava/lang/Object;
.source "Projector.java"


# instance fields
.field private mGrabber:Lio/appium/android/apis/graphics/spritetext/MatrixGrabber;

.field private mMVP:[F

.field private mMVPComputed:Z

.field private mV:[F

.field private mViewHeight:I

.field private mViewWidth:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lio/appium/android/apis/graphics/spritetext/Projector;->mMVP:[F

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lio/appium/android/apis/graphics/spritetext/Projector;->mV:[F

    .line 31
    new-instance v0, Lio/appium/android/apis/graphics/spritetext/MatrixGrabber;

    invoke-direct {v0}, Lio/appium/android/apis/graphics/spritetext/MatrixGrabber;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/spritetext/Projector;->mGrabber:Lio/appium/android/apis/graphics/spritetext/MatrixGrabber;

    .line 32
    return-void
.end method


# virtual methods
.method public getCurrentModelView(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 72
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/Projector;->mGrabber:Lio/appium/android/apis/graphics/spritetext/MatrixGrabber;

    invoke-virtual {v0, p1}, Lio/appium/android/apis/graphics/spritetext/MatrixGrabber;->getCurrentModelView(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/appium/android/apis/graphics/spritetext/Projector;->mMVPComputed:Z

    .line 74
    return-void
.end method

.method public getCurrentProjection(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 62
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/Projector;->mGrabber:Lio/appium/android/apis/graphics/spritetext/MatrixGrabber;

    invoke-virtual {v0, p1}, Lio/appium/android/apis/graphics/spritetext/MatrixGrabber;->getCurrentProjection(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/appium/android/apis/graphics/spritetext/Projector;->mMVPComputed:Z

    .line 64
    return-void
.end method

.method public project([FI[FI)V
    .locals 15
    .param p1, "obj"    # [F
    .param p2, "objOffset"    # I
    .param p3, "win"    # [F
    .param p4, "winOffset"    # I

    .line 42
    move-object v0, p0

    iget-boolean v1, v0, Lio/appium/android/apis/graphics/spritetext/Projector;->mMVPComputed:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 43
    iget-object v3, v0, Lio/appium/android/apis/graphics/spritetext/Projector;->mMVP:[F

    const/4 v4, 0x0

    iget-object v1, v0, Lio/appium/android/apis/graphics/spritetext/Projector;->mGrabber:Lio/appium/android/apis/graphics/spritetext/MatrixGrabber;

    iget-object v5, v1, Lio/appium/android/apis/graphics/spritetext/MatrixGrabber;->mProjection:[F

    const/4 v6, 0x0

    iget-object v1, v0, Lio/appium/android/apis/graphics/spritetext/Projector;->mGrabber:Lio/appium/android/apis/graphics/spritetext/MatrixGrabber;

    iget-object v7, v1, Lio/appium/android/apis/graphics/spritetext/MatrixGrabber;->mModelView:[F

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 44
    iput-boolean v2, v0, Lio/appium/android/apis/graphics/spritetext/Projector;->mMVPComputed:Z

    .line 47
    :cond_0
    iget-object v9, v0, Lio/appium/android/apis/graphics/spritetext/Projector;->mV:[F

    const/4 v10, 0x0

    iget-object v11, v0, Lio/appium/android/apis/graphics/spritetext/Projector;->mMVP:[F

    const/4 v12, 0x0

    move-object/from16 v13, p1

    move/from16 v14, p2

    invoke-static/range {v9 .. v14}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 49
    iget-object v1, v0, Lio/appium/android/apis/graphics/spritetext/Projector;->mV:[F

    const/4 v3, 0x3

    aget v3, v1, v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    .line 51
    .local v3, "rw":F
    iget v5, v0, Lio/appium/android/apis/graphics/spritetext/Projector;->mX:I

    int-to-float v5, v5

    iget v6, v0, Lio/appium/android/apis/graphics/spritetext/Projector;->mViewWidth:I

    int-to-float v6, v6

    const/4 v7, 0x0

    aget v7, v1, v7

    mul-float v7, v7, v3

    add-float/2addr v7, v4

    mul-float v6, v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    aput v5, p3, p4

    .line 52
    add-int/lit8 v5, p4, 0x1

    iget v6, v0, Lio/appium/android/apis/graphics/spritetext/Projector;->mY:I

    int-to-float v6, v6

    iget v8, v0, Lio/appium/android/apis/graphics/spritetext/Projector;->mViewHeight:I

    int-to-float v8, v8

    aget v2, v1, v2

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    mul-float v8, v8, v2

    mul-float v8, v8, v7

    add-float/2addr v6, v8

    aput v6, p3, v5

    .line 53
    add-int/lit8 v2, p4, 0x2

    const/4 v5, 0x2

    aget v1, v1, v5

    mul-float v1, v1, v3

    add-float/2addr v1, v4

    mul-float v1, v1, v7

    aput v1, p3, v2

    .line 54
    return-void
.end method

.method public setCurrentView(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 35
    iput p1, p0, Lio/appium/android/apis/graphics/spritetext/Projector;->mX:I

    .line 36
    iput p2, p0, Lio/appium/android/apis/graphics/spritetext/Projector;->mY:I

    .line 37
    iput p3, p0, Lio/appium/android/apis/graphics/spritetext/Projector;->mViewWidth:I

    .line 38
    iput p4, p0, Lio/appium/android/apis/graphics/spritetext/Projector;->mViewHeight:I

    .line 39
    return-void
.end method
