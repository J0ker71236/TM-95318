.class Lio/appium/android/apis/animation/AnimationLoading$1;
.super Ljava/lang/Object;
.source "AnimationLoading.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/animation/AnimationLoading;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/animation/AnimationLoading;

.field final synthetic val$animView:Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;


# direct methods
.method constructor <init>(Lio/appium/android/apis/animation/AnimationLoading;Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/animation/AnimationLoading;

    .line 61
    iput-object p1, p0, Lio/appium/android/apis/animation/AnimationLoading$1;->this$0:Lio/appium/android/apis/animation/AnimationLoading;

    iput-object p2, p0, Lio/appium/android/apis/animation/AnimationLoading$1;->val$animView:Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 63
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimationLoading$1;->val$animView:Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;

    invoke-virtual {v0}, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->startAnimation()V

    .line 64
    return-void
.end method
