.class public Lio/appium/android/apis/graphics/GLSurfaceViewActivity;
.super Landroid/app/Activity;
.source "GLSurfaceViewActivity.java"


# instance fields
.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, p0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/GLSurfaceViewActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 35
    iget-object v0, p0, Lio/appium/android/apis/graphics/GLSurfaceViewActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lio/appium/android/apis/graphics/CubeRenderer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/appium/android/apis/graphics/CubeRenderer;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 36
    iget-object v0, p0, Lio/appium/android/apis/graphics/GLSurfaceViewActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/GLSurfaceViewActivity;->setContentView(Landroid/view/View;)V

    .line 37
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 52
    iget-object v0, p0, Lio/appium/android/apis/graphics/GLSurfaceViewActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 53
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 43
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 44
    iget-object v0, p0, Lio/appium/android/apis/graphics/GLSurfaceViewActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 45
    return-void
.end method
