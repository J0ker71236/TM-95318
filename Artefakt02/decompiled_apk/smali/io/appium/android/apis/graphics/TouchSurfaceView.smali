.class Lio/appium/android/apis/graphics/TouchSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "TouchRotateActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/graphics/TouchSurfaceView$CubeRenderer;
    }
.end annotation


# instance fields
.field private final TOUCH_SCALE_FACTOR:F

.field private final TRACKBALL_SCALE_FACTOR:F

.field private mPreviousX:F

.field private mPreviousY:F

.field private mRenderer:Lio/appium/android/apis/graphics/TouchSurfaceView$CubeRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 177
    const/high16 v0, 0x3f100000    # 0.5625f

    iput v0, p0, Lio/appium/android/apis/graphics/TouchSurfaceView;->TOUCH_SCALE_FACTOR:F

    .line 178
    const/high16 v0, 0x42100000    # 36.0f

    iput v0, p0, Lio/appium/android/apis/graphics/TouchSurfaceView;->TRACKBALL_SCALE_FACTOR:F

    .line 75
    new-instance v0, Lio/appium/android/apis/graphics/TouchSurfaceView$CubeRenderer;

    invoke-direct {v0, p0}, Lio/appium/android/apis/graphics/TouchSurfaceView$CubeRenderer;-><init>(Lio/appium/android/apis/graphics/TouchSurfaceView;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/TouchSurfaceView;->mRenderer:Lio/appium/android/apis/graphics/TouchSurfaceView$CubeRenderer;

    .line 76
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchSurfaceView;->mRenderer:Lio/appium/android/apis/graphics/TouchSurfaceView$CubeRenderer;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/TouchSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/TouchSurfaceView;->setRenderMode(I)V

    .line 78
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 89
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 90
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget v2, p0, Lio/appium/android/apis/graphics/TouchSurfaceView;->mPreviousX:F

    sub-float v2, v0, v2

    .line 93
    .local v2, "dx":F
    iget v3, p0, Lio/appium/android/apis/graphics/TouchSurfaceView;->mPreviousY:F

    sub-float v3, v1, v3

    .line 94
    .local v3, "dy":F
    iget-object v4, p0, Lio/appium/android/apis/graphics/TouchSurfaceView;->mRenderer:Lio/appium/android/apis/graphics/TouchSurfaceView$CubeRenderer;

    iget v5, v4, Lio/appium/android/apis/graphics/TouchSurfaceView$CubeRenderer;->mAngleX:F

    const/high16 v6, 0x3f100000    # 0.5625f

    mul-float v7, v2, v6

    add-float/2addr v5, v7

    iput v5, v4, Lio/appium/android/apis/graphics/TouchSurfaceView$CubeRenderer;->mAngleX:F

    .line 95
    iget-object v4, p0, Lio/appium/android/apis/graphics/TouchSurfaceView;->mRenderer:Lio/appium/android/apis/graphics/TouchSurfaceView$CubeRenderer;

    iget v5, v4, Lio/appium/android/apis/graphics/TouchSurfaceView$CubeRenderer;->mAngleY:F

    mul-float v6, v6, v3

    add-float/2addr v5, v6

    iput v5, v4, Lio/appium/android/apis/graphics/TouchSurfaceView$CubeRenderer;->mAngleY:F

    .line 96
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/TouchSurfaceView;->requestRender()V

    .line 98
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    :goto_0
    iput v0, p0, Lio/appium/android/apis/graphics/TouchSurfaceView;->mPreviousX:F

    .line 99
    iput v1, p0, Lio/appium/android/apis/graphics/TouchSurfaceView;->mPreviousY:F

    .line 100
    const/4 v2, 0x1

    return v2
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 81
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchSurfaceView;->mRenderer:Lio/appium/android/apis/graphics/TouchSurfaceView$CubeRenderer;

    iget v1, v0, Lio/appium/android/apis/graphics/TouchSurfaceView$CubeRenderer;->mAngleX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/high16 v3, 0x42100000    # 36.0f

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lio/appium/android/apis/graphics/TouchSurfaceView$CubeRenderer;->mAngleX:F

    .line 82
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchSurfaceView;->mRenderer:Lio/appium/android/apis/graphics/TouchSurfaceView$CubeRenderer;

    iget v1, v0, Lio/appium/android/apis/graphics/TouchSurfaceView$CubeRenderer;->mAngleY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lio/appium/android/apis/graphics/TouchSurfaceView$CubeRenderer;->mAngleY:F

    .line 83
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/TouchSurfaceView;->requestRender()V

    .line 84
    const/4 v0, 0x1

    return v0
.end method
