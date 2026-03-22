.class Lio/appium/android/apis/animation/AnimationSeeking$1;
.super Ljava/lang/Object;
.source "AnimationSeeking.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/animation/AnimationSeeking;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/animation/AnimationSeeking;

.field final synthetic val$animView:Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;


# direct methods
.method constructor <init>(Lio/appium/android/apis/animation/AnimationSeeking;Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/animation/AnimationSeeking;

    .line 64
    iput-object p1, p0, Lio/appium/android/apis/animation/AnimationSeeking$1;->this$0:Lio/appium/android/apis/animation/AnimationSeeking;

    iput-object p2, p0, Lio/appium/android/apis/animation/AnimationSeeking$1;->val$animView:Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 66
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimationSeeking$1;->val$animView:Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;

    invoke-virtual {v0}, Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;->startAnimation()V

    .line 67
    return-void
.end method
