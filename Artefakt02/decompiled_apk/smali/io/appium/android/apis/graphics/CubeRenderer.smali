.class public Lio/appium/android/apis/graphics/CubeRenderer;
.super Ljava/lang/Object;
.source "CubeRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private mAngle:F

.field private mCube:Lio/appium/android/apis/graphics/Cube;

.field private mTranslucentBackground:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "useTranslucentBackground"    # Z

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean p1, p0, Lio/appium/android/apis/graphics/CubeRenderer;->mTranslucentBackground:Z

    .line 31
    new-instance v0, Lio/appium/android/apis/graphics/Cube;

    invoke-direct {v0}, Lio/appium/android/apis/graphics/Cube;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/CubeRenderer;->mCube:Lio/appium/android/apis/graphics/Cube;

    .line 32
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 41
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 47
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 48
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 49
    const/4 v0, 0x0

    const/high16 v1, -0x3fc00000    # -3.0f

    invoke-interface {p1, v0, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 50
    iget v1, p0, Lio/appium/android/apis/graphics/CubeRenderer;->mAngle:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v1, v0, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 51
    iget v1, p0, Lio/appium/android/apis/graphics/CubeRenderer;->mAngle:F

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float v1, v1, v3

    invoke-interface {p1, v1, v2, v0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 53
    const v1, 0x8074

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 54
    const v1, 0x8076

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 56
    iget-object v1, p0, Lio/appium/android/apis/graphics/CubeRenderer;->mCube:Lio/appium/android/apis/graphics/Cube;

    invoke-virtual {v1, p1}, Lio/appium/android/apis/graphics/Cube;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 58
    iget v1, p0, Lio/appium/android/apis/graphics/CubeRenderer;->mAngle:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v1, v1, v3

    invoke-interface {p1, v1, v0, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 59
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-interface {p1, v0, v0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 61
    iget-object v0, p0, Lio/appium/android/apis/graphics/CubeRenderer;->mCube:Lio/appium/android/apis/graphics/Cube;

    invoke-virtual {v0, p1}, Lio/appium/android/apis/graphics/Cube;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 63
    iget v0, p0, Lio/appium/android/apis/graphics/CubeRenderer;->mAngle:F

    const v1, 0x3f99999a    # 1.2f

    add-float/2addr v0, v1

    iput v0, p0, Lio/appium/android/apis/graphics/CubeRenderer;->mAngle:F

    .line 64
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 9
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 67
    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 75
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    .line 76
    .local v0, "ratio":F
    const/16 v1, 0x1701

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 77
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 78
    neg-float v3, v0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x41200000    # 10.0f

    move-object v2, p1

    move v4, v0

    invoke-interface/range {v2 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 79
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .line 87
    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 93
    const/16 v0, 0xc50

    const/16 v1, 0x1101

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 96
    iget-boolean v0, p0, Lio/appium/android/apis/graphics/CubeRenderer;->mTranslucentBackground:Z

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, v0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    goto :goto_0

    .line 99
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v0, v0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 101
    :goto_0
    const/16 v0, 0xb44

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 102
    const/16 v0, 0x1d01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 103
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 104
    return-void
.end method
