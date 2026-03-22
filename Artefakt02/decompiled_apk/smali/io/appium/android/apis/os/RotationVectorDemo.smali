.class public Lio/appium/android/apis/os/RotationVectorDemo;
.super Landroid/app/Activity;
.source "RotationVectorDemo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;
    }
.end annotation


# instance fields
.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mRenderer:Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/os/RotationVectorDemo;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/os/RotationVectorDemo;

    .line 42
    iget-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/os/RotationVectorDemo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo;->mSensorManager:Landroid/hardware/SensorManager;

    .line 56
    new-instance v0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;

    invoke-direct {v0, p0}, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;-><init>(Lio/appium/android/apis/os/RotationVectorDemo;)V

    iput-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo;->mRenderer:Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;

    .line 57
    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, p0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 58
    iget-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lio/appium/android/apis/os/RotationVectorDemo;->mRenderer:Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 59
    iget-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/os/RotationVectorDemo;->setContentView(Landroid/view/View;)V

    .line 60
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 76
    iget-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo;->mRenderer:Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;

    invoke-virtual {v0}, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;->stop()V

    .line 77
    iget-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 78
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 67
    iget-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo;->mRenderer:Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;

    invoke-virtual {v0}, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;->start()V

    .line 68
    iget-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 69
    return-void
.end method
