.class public Lio/appium/android/apis/graphics/CompressedTextureActivity;
.super Landroid/app/Activity;
.source "CompressedTextureActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/graphics/CompressedTextureActivity$SyntheticCompressedTextureLoader;,
        Lio/appium/android/apis/graphics/CompressedTextureActivity$CompressedTextureLoader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CompressedTextureActivity"

.field private static final TEST_CREATE_TEXTURE:Z = false

.field private static final USE_STREAM_IO:Z = false


# instance fields
.field private mGLView:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, p0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/CompressedTextureActivity;->mGLView:Landroid/opengl/GLSurfaceView;

    .line 62
    iget-object v0, p0, Lio/appium/android/apis/graphics/CompressedTextureActivity;->mGLView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Z)V

    .line 67
    new-instance v0, Lio/appium/android/apis/graphics/CompressedTextureActivity$CompressedTextureLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/appium/android/apis/graphics/CompressedTextureActivity$CompressedTextureLoader;-><init>(Lio/appium/android/apis/graphics/CompressedTextureActivity;Lio/appium/android/apis/graphics/CompressedTextureActivity$1;)V

    .line 69
    .local v0, "loader":Lio/appium/android/apis/graphics/StaticTriangleRenderer$TextureLoader;
    iget-object v1, p0, Lio/appium/android/apis/graphics/CompressedTextureActivity;->mGLView:Landroid/opengl/GLSurfaceView;

    new-instance v2, Lio/appium/android/apis/graphics/StaticTriangleRenderer;

    invoke-direct {v2, p0, v0}, Lio/appium/android/apis/graphics/StaticTriangleRenderer;-><init>(Landroid/content/Context;Lio/appium/android/apis/graphics/StaticTriangleRenderer$TextureLoader;)V

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 70
    iget-object v1, p0, Lio/appium/android/apis/graphics/CompressedTextureActivity;->mGLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0, v1}, Lio/appium/android/apis/graphics/CompressedTextureActivity;->setContentView(Landroid/view/View;)V

    .line 71
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 76
    iget-object v0, p0, Lio/appium/android/apis/graphics/CompressedTextureActivity;->mGLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 77
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 82
    iget-object v0, p0, Lio/appium/android/apis/graphics/CompressedTextureActivity;->mGLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 83
    return-void
.end method
