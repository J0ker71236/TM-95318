.class final Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;
.super Landroid/app/Presentation;
.source "PresentationWithMediaRouterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DemoPresentation"
.end annotation


# instance fields
.field private mSurfaceView:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;

    .line 265
    invoke-direct {p0, p1, p2}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 266
    return-void
.end method


# virtual methods
.method public getSurfaceView()Landroid/opengl/GLSurfaceView;
    .locals 1

    .line 286
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 271
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    .line 275
    invoke-virtual {p0}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 278
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f0b00c0

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;->setContentView(I)V

    .line 281
    const v1, 0x7f090202

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/opengl/GLSurfaceView;

    iput-object v1, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 282
    iget-object v1, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v2, Lio/appium/android/apis/graphics/CubeRenderer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lio/appium/android/apis/graphics/CubeRenderer;-><init>(Z)V

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 283
    return-void
.end method
