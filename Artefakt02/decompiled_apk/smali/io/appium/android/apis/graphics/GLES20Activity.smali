.class public Lio/appium/android/apis/graphics/GLES20Activity;
.super Landroid/app/Activity;
.source "GLES20Activity.java"


# instance fields
.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private detectOpenGLES20()Z
    .locals 4

    .line 49
    const-string v0, "activity"

    .line 50
    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/GLES20Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 51
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 52
    .local v1, "info":Landroid/content/pm/ConfigurationInfo;
    iget v2, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v3, 0x20000

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, p0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/GLES20Activity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 35
    invoke-direct {p0}, Lio/appium/android/apis/graphics/GLES20Activity;->detectOpenGLES20()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lio/appium/android/apis/graphics/GLES20Activity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 39
    iget-object v0, p0, Lio/appium/android/apis/graphics/GLES20Activity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;

    invoke-direct {v1, p0}, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/graphics/GLES20Activity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lio/appium/android/apis/graphics/TriangleRenderer;

    invoke-direct {v1, p0}, Lio/appium/android/apis/graphics/TriangleRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 45
    :goto_0
    iget-object v0, p0, Lio/appium/android/apis/graphics/GLES20Activity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/GLES20Activity;->setContentView(Landroid/view/View;)V

    .line 46
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 68
    iget-object v0, p0, Lio/appium/android/apis/graphics/GLES20Activity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 69
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 60
    iget-object v0, p0, Lio/appium/android/apis/graphics/GLES20Activity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 61
    return-void
.end method
