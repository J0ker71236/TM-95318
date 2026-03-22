.class public Lio/appium/android/apis/graphics/TriangleActivity;
.super Landroid/app/Activity;
.source "TriangleActivity.java"


# instance fields
.field private mGLView:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, p0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/TriangleActivity;->mGLView:Landroid/opengl/GLSurfaceView;

    .line 29
    iget-object v0, p0, Lio/appium/android/apis/graphics/TriangleActivity;->mGLView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lio/appium/android/apis/graphics/StaticTriangleRenderer;

    invoke-direct {v1, p0}, Lio/appium/android/apis/graphics/StaticTriangleRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 33
    iget-object v0, p0, Lio/appium/android/apis/graphics/TriangleActivity;->mGLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/TriangleActivity;->setContentView(Landroid/view/View;)V

    .line 34
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 38
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 39
    iget-object v0, p0, Lio/appium/android/apis/graphics/TriangleActivity;->mGLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 40
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 45
    iget-object v0, p0, Lio/appium/android/apis/graphics/TriangleActivity;->mGLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 46
    return-void
.end method
