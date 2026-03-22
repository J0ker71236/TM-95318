.class Lio/appium/android/apis/graphics/SurfaceViewOverlay$HideMeListener;
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
    name = "HideMeListener"
.end annotation


# instance fields
.field final mTarget:Landroid/view/View;

.field final synthetic this$0:Lio/appium/android/apis/graphics/SurfaceViewOverlay;


# direct methods
.method constructor <init>(Lio/appium/android/apis/graphics/SurfaceViewOverlay;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/graphics/SurfaceViewOverlay;
    .param p2, "target"    # Landroid/view/View;

    .line 83
    iput-object p1, p0, Lio/appium/android/apis/graphics/SurfaceViewOverlay$HideMeListener;->this$0:Lio/appium/android/apis/graphics/SurfaceViewOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p2, p0, Lio/appium/android/apis/graphics/SurfaceViewOverlay$HideMeListener;->mTarget:Landroid/view/View;

    .line 85
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 88
    iget-object v0, p0, Lio/appium/android/apis/graphics/SurfaceViewOverlay$HideMeListener;->mTarget:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    return-void
.end method
