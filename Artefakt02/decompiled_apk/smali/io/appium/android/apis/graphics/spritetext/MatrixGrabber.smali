.class Lio/appium/android/apis/graphics/spritetext/MatrixGrabber;
.super Ljava/lang/Object;
.source "MatrixGrabber.java"


# instance fields
.field public mModelView:[F

.field public mProjection:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lio/appium/android/apis/graphics/spritetext/MatrixGrabber;->mModelView:[F

    .line 24
    new-array v0, v0, [F

    iput-object v0, p0, Lio/appium/android/apis/graphics/spritetext/MatrixGrabber;->mProjection:[F

    .line 25
    return-void
.end method

.method private getMatrix(Ljavax/microedition/khronos/opengles/GL10;I[F)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "mode"    # I
    .param p3, "mat"    # [F

    .line 56
    move-object v0, p1

    check-cast v0, Lio/appium/android/apis/graphics/spritetext/MatrixTrackingGL;

    .line 57
    .local v0, "gl2":Lio/appium/android/apis/graphics/spritetext/MatrixTrackingGL;
    invoke-virtual {v0, p2}, Lio/appium/android/apis/graphics/spritetext/MatrixTrackingGL;->glMatrixMode(I)V

    .line 58
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lio/appium/android/apis/graphics/spritetext/MatrixTrackingGL;->getMatrix([FI)V

    .line 59
    return-void
.end method


# virtual methods
.method public getCurrentModelView(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 43
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/MatrixGrabber;->mModelView:[F

    const/16 v1, 0x1700

    invoke-direct {p0, p1, v1, v0}, Lio/appium/android/apis/graphics/spritetext/MatrixGrabber;->getMatrix(Ljavax/microedition/khronos/opengles/GL10;I[F)V

    .line 44
    return-void
.end method

.method public getCurrentProjection(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 52
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/MatrixGrabber;->mProjection:[F

    const/16 v1, 0x1701

    invoke-direct {p0, p1, v1, v0}, Lio/appium/android/apis/graphics/spritetext/MatrixGrabber;->getMatrix(Ljavax/microedition/khronos/opengles/GL10;I[F)V

    .line 53
    return-void
.end method

.method public getCurrentState(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 33
    invoke-virtual {p0, p1}, Lio/appium/android/apis/graphics/spritetext/MatrixGrabber;->getCurrentProjection(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 34
    invoke-virtual {p0, p1}, Lio/appium/android/apis/graphics/spritetext/MatrixGrabber;->getCurrentModelView(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 35
    return-void
.end method
