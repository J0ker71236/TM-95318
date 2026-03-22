.class public Lio/appium/android/apis/graphics/WindowSurface;
.super Landroid/app/Activity;
.source "WindowSurface.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;,
        Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;
    }
.end annotation


# instance fields
.field mDrawingThread:Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/WindowSurface;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Window;->takeSurface(Landroid/view/SurfaceHolder$Callback2;)V

    .line 29
    new-instance v0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;

    invoke-direct {v0, p0}, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;-><init>(Lio/appium/android/apis/graphics/WindowSurface;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/WindowSurface;->mDrawingThread:Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;

    .line 30
    iget-object v0, p0, Lio/appium/android/apis/graphics/WindowSurface;->mDrawingThread:Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;

    invoke-virtual {v0}, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->start()V

    .line 31
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 60
    iget-object v0, p0, Lio/appium/android/apis/graphics/WindowSurface;->mDrawingThread:Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;

    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface;->mDrawingThread:Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mQuit:Z

    .line 62
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface;->mDrawingThread:Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 63
    monitor-exit v0

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onPause()V
    .locals 3

    .line 35
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 38
    iget-object v0, p0, Lio/appium/android/apis/graphics/WindowSurface;->mDrawingThread:Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface;->mDrawingThread:Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mRunning:Z

    .line 40
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface;->mDrawingThread:Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 41
    monitor-exit v0

    .line 42
    return-void

    .line 41
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onResume()V
    .locals 3

    .line 46
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 49
    iget-object v0, p0, Lio/appium/android/apis/graphics/WindowSurface;->mDrawingThread:Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;

    monitor-enter v0

    .line 50
    :try_start_0
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface;->mDrawingThread:Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mRunning:Z

    .line 51
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface;->mDrawingThread:Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 52
    monitor-exit v0

    .line 53
    return-void

    .line 52
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 77
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 68
    iget-object v0, p0, Lio/appium/android/apis/graphics/WindowSurface;->mDrawingThread:Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface;->mDrawingThread:Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;

    iput-object p1, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mSurface:Landroid/view/SurfaceHolder;

    .line 70
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface;->mDrawingThread:Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 71
    monitor-exit v0

    .line 72
    return-void

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 85
    iget-object v0, p0, Lio/appium/android/apis/graphics/WindowSurface;->mDrawingThread:Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;

    monitor-enter v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface;->mDrawingThread:Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;

    iput-object p1, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mSurface:Landroid/view/SurfaceHolder;

    .line 87
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface;->mDrawingThread:Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 88
    :goto_0
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface;->mDrawingThread:Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;

    iget-boolean v1, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 90
    :try_start_1
    iget-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface;->mDrawingThread:Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :goto_1
    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 95
    :cond_0
    monitor-exit v0

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 80
    return-void
.end method
