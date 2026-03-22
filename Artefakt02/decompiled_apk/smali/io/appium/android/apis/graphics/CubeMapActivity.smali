.class public Lio/appium/android/apis/graphics/CubeMapActivity;
.super Landroid/app/Activity;
.source "CubeMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/graphics/CubeMapActivity$Grid;,
        Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;
    }
.end annotation


# instance fields
.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static checkGLError(Ljavax/microedition/khronos/opengles/GL;)V
    .locals 4
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL;

    .line 384
    move-object v0, p0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    .line 385
    .local v0, "error":I
    if-nez v0, :cond_0

    .line 388
    return-void

    .line 386
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLError 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 392
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 396
    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, p0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 397
    iget-object v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/appium/android/apis/graphics/CubeMapActivity$Renderer;-><init>(Lio/appium/android/apis/graphics/CubeMapActivity;Lio/appium/android/apis/graphics/CubeMapActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 398
    iget-object v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/CubeMapActivity;->setContentView(Landroid/view/View;)V

    .line 399
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 413
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 414
    iget-object v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 415
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 405
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 406
    iget-object v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 407
    return-void
.end method
