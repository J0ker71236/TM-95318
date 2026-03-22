.class public Lio/appium/android/apis/graphics/SurfaceViewOverlay;
.super Landroid/app/Activity;
.source "SurfaceViewOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/graphics/SurfaceViewOverlay$HideMeListener;
    }
.end annotation


# instance fields
.field mGoneListener:Landroid/view/View$OnClickListener;

.field mInvisibleListener:Landroid/view/View$OnClickListener;

.field mVictim1:Landroid/view/View;

.field mVictim2:Landroid/view/View;

.field mVictimContainer:Landroid/view/View;

.field mVisibleListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    new-instance v0, Lio/appium/android/apis/graphics/SurfaceViewOverlay$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/graphics/SurfaceViewOverlay$1;-><init>(Lio/appium/android/apis/graphics/SurfaceViewOverlay;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->mVisibleListener:Landroid/view/View$OnClickListener;

    .line 101
    new-instance v0, Lio/appium/android/apis/graphics/SurfaceViewOverlay$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/graphics/SurfaceViewOverlay$2;-><init>(Lio/appium/android/apis/graphics/SurfaceViewOverlay;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->mInvisibleListener:Landroid/view/View$OnClickListener;

    .line 109
    new-instance v0, Lio/appium/android/apis/graphics/SurfaceViewOverlay$3;

    invoke-direct {v0, p0}, Lio/appium/android/apis/graphics/SurfaceViewOverlay$3;-><init>(Lio/appium/android/apis/graphics/SurfaceViewOverlay;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->mGoneListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f0b0103

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->setContentView(I)V

    .line 44
    nop

    .line 45
    const v0, 0x7f0900da

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    .line 46
    .local v0, "glSurfaceView":Landroid/opengl/GLSurfaceView;
    new-instance v1, Lio/appium/android/apis/graphics/CubeRenderer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/appium/android/apis/graphics/CubeRenderer;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 49
    const v1, 0x7f0900e9

    invoke-virtual {p0, v1}, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->mVictimContainer:Landroid/view/View;

    .line 50
    const v1, 0x7f0900ea

    invoke-virtual {p0, v1}, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->mVictim1:Landroid/view/View;

    .line 51
    iget-object v1, p0, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->mVictim1:Landroid/view/View;

    new-instance v2, Lio/appium/android/apis/graphics/SurfaceViewOverlay$HideMeListener;

    invoke-direct {v2, p0, v1}, Lio/appium/android/apis/graphics/SurfaceViewOverlay$HideMeListener;-><init>(Lio/appium/android/apis/graphics/SurfaceViewOverlay;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v1, 0x7f0900eb

    invoke-virtual {p0, v1}, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->mVictim2:Landroid/view/View;

    .line 53
    iget-object v1, p0, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->mVictim2:Landroid/view/View;

    new-instance v2, Lio/appium/android/apis/graphics/SurfaceViewOverlay$HideMeListener;

    invoke-direct {v2, p0, v1}, Lio/appium/android/apis/graphics/SurfaceViewOverlay$HideMeListener;-><init>(Lio/appium/android/apis/graphics/SurfaceViewOverlay;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v1, 0x7f09024a

    invoke-virtual {p0, v1}, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 57
    .local v1, "visibleButton":Landroid/widget/Button;
    const v2, 0x7f0900fd

    invoke-virtual {p0, v2}, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 58
    .local v2, "invisibleButton":Landroid/widget/Button;
    const v3, 0x7f0900dc

    invoke-virtual {p0, v3}, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 61
    .local v3, "goneButton":Landroid/widget/Button;
    iget-object v4, p0, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->mVisibleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v4, p0, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->mInvisibleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v4, p0, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->mGoneListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 78
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 71
    return-void
.end method
