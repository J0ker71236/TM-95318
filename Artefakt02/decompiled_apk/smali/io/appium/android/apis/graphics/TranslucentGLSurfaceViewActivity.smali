.class public Lio/appium/android/apis/graphics/TranslucentGLSurfaceViewActivity;
.super Landroid/app/Activity;
.source "TranslucentGLSurfaceViewActivity.java"


# instance fields
.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, p0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/TranslucentGLSurfaceViewActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 40
    iget-object v1, p0, Lio/appium/android/apis/graphics/TranslucentGLSurfaceViewActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x10

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 43
    iget-object v0, p0, Lio/appium/android/apis/graphics/TranslucentGLSurfaceViewActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lio/appium/android/apis/graphics/CubeRenderer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lio/appium/android/apis/graphics/CubeRenderer;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 45
    iget-object v0, p0, Lio/appium/android/apis/graphics/TranslucentGLSurfaceViewActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 46
    iget-object v0, p0, Lio/appium/android/apis/graphics/TranslucentGLSurfaceViewActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/TranslucentGLSurfaceViewActivity;->setContentView(Landroid/view/View;)V

    .line 47
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 58
    iget-object v0, p0, Lio/appium/android/apis/graphics/TranslucentGLSurfaceViewActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 59
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 52
    iget-object v0, p0, Lio/appium/android/apis/graphics/TranslucentGLSurfaceViewActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 53
    return-void
.end method
