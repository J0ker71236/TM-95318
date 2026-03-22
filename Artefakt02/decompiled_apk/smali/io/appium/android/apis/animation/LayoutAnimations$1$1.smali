.class Lio/appium/android/apis/animation/LayoutAnimations$1$1;
.super Ljava/lang/Object;
.source "LayoutAnimations.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/animation/LayoutAnimations$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/appium/android/apis/animation/LayoutAnimations$1;


# direct methods
.method constructor <init>(Lio/appium/android/apis/animation/LayoutAnimations$1;)V
    .locals 0
    .param p1, "this$1"    # Lio/appium/android/apis/animation/LayoutAnimations$1;

    .line 86
    iput-object p1, p0, Lio/appium/android/apis/animation/LayoutAnimations$1$1;->this$1:Lio/appium/android/apis/animation/LayoutAnimations$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 88
    iget-object v0, p0, Lio/appium/android/apis/animation/LayoutAnimations$1$1;->this$1:Lio/appium/android/apis/animation/LayoutAnimations$1;

    iget-object v0, v0, Lio/appium/android/apis/animation/LayoutAnimations$1;->this$0:Lio/appium/android/apis/animation/LayoutAnimations;

    iget-object v0, v0, Lio/appium/android/apis/animation/LayoutAnimations;->container:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 89
    return-void
.end method
