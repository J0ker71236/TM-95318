.class public Lio/appium/android/apis/graphics/spritetext/SpriteTextActivity;
.super Landroid/app/Activity;
.source "SpriteTextActivity.java"


# instance fields
.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, p0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 31
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lio/appium/android/apis/graphics/spritetext/SpriteTextActivity$1;

    invoke-direct {v1, p0}, Lio/appium/android/apis/graphics/spritetext/SpriteTextActivity$1;-><init>(Lio/appium/android/apis/graphics/spritetext/SpriteTextActivity;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setGLWrapper(Landroid/opengl/GLSurfaceView$GLWrapper;)V

    .line 35
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;

    invoke-direct {v1, p0}, Lio/appium/android/apis/graphics/spritetext/SpriteTextRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 36
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/spritetext/SpriteTextActivity;->setContentView(Landroid/view/View;)V

    .line 37
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 42
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 43
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 48
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 49
    return-void
.end method
