.class public Lio/appium/android/apis/graphics/TouchRotateActivity;
.super Landroid/app/Activity;
.source "TouchRotateActivity.java"


# instance fields
.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    new-instance v0, Lio/appium/android/apis/graphics/TouchSurfaceView;

    invoke-direct {v0, p0}, Lio/appium/android/apis/graphics/TouchSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/TouchRotateActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 43
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchRotateActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/TouchRotateActivity;->setContentView(Landroid/view/View;)V

    .line 44
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchRotateActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestFocus()Z

    .line 45
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchRotateActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setFocusableInTouchMode(Z)V

    .line 46
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 61
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchRotateActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 62
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 53
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchRotateActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 54
    return-void
.end method
