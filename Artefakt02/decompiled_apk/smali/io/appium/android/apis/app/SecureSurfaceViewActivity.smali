.class public Lio/appium/android/apis/app/SecureSurfaceViewActivity;
.super Landroid/app/Activity;
.source "SecureSurfaceViewActivity.java"


# instance fields
.field private mSurfaceView:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f0b00ee

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/SecureSurfaceViewActivity;->setContentView(I)V

    .line 74
    const v0, 0x7f090202

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/SecureSurfaceViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    iput-object v0, p0, Lio/appium/android/apis/app/SecureSurfaceViewActivity;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 75
    iget-object v0, p0, Lio/appium/android/apis/app/SecureSurfaceViewActivity;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lio/appium/android/apis/graphics/CubeRenderer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/appium/android/apis/graphics/CubeRenderer;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 81
    iget-object v0, p0, Lio/appium/android/apis/app/SecureSurfaceViewActivity;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setSecure(Z)V

    .line 82
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 99
    iget-object v0, p0, Lio/appium/android/apis/app/SecureSurfaceViewActivity;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 100
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 90
    iget-object v0, p0, Lio/appium/android/apis/app/SecureSurfaceViewActivity;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 91
    return-void
.end method
