.class Lio/appium/android/apis/animation/AnimatorEvents$2;
.super Ljava/lang/Object;
.source "AnimatorEvents.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/animation/AnimatorEvents;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/animation/AnimatorEvents;

.field final synthetic val$animView:Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;


# direct methods
.method constructor <init>(Lio/appium/android/apis/animation/AnimatorEvents;Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/animation/AnimatorEvents;

    .line 88
    iput-object p1, p0, Lio/appium/android/apis/animation/AnimatorEvents$2;->this$0:Lio/appium/android/apis/animation/AnimatorEvents;

    iput-object p2, p0, Lio/appium/android/apis/animation/AnimatorEvents$2;->val$animView:Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 91
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimatorEvents$2;->val$animView:Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;

    invoke-virtual {v0}, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->cancelAnimation()V

    .line 92
    return-void
.end method
