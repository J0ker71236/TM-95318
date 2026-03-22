.class Lio/appium/android/apis/graphics/SurfaceViewOverlay$2;
.super Ljava/lang/Object;
.source "SurfaceViewOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/SurfaceViewOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/graphics/SurfaceViewOverlay;


# direct methods
.method constructor <init>(Lio/appium/android/apis/graphics/SurfaceViewOverlay;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/graphics/SurfaceViewOverlay;

    .line 101
    iput-object p1, p0, Lio/appium/android/apis/graphics/SurfaceViewOverlay$2;->this$0:Lio/appium/android/apis/graphics/SurfaceViewOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 103
    iget-object v0, p0, Lio/appium/android/apis/graphics/SurfaceViewOverlay$2;->this$0:Lio/appium/android/apis/graphics/SurfaceViewOverlay;

    iget-object v0, v0, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->mVictim1:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lio/appium/android/apis/graphics/SurfaceViewOverlay$2;->this$0:Lio/appium/android/apis/graphics/SurfaceViewOverlay;

    iget-object v0, v0, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->mVictim2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lio/appium/android/apis/graphics/SurfaceViewOverlay$2;->this$0:Lio/appium/android/apis/graphics/SurfaceViewOverlay;

    iget-object v0, v0, Lio/appium/android/apis/graphics/SurfaceViewOverlay;->mVictimContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    return-void
.end method
