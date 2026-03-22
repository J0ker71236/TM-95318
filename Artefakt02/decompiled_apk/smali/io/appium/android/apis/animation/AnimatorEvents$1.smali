.class Lio/appium/android/apis/animation/AnimatorEvents$1;
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

.field final synthetic val$endCB:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lio/appium/android/apis/animation/AnimatorEvents;Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/animation/AnimatorEvents;

    .line 80
    iput-object p1, p0, Lio/appium/android/apis/animation/AnimatorEvents$1;->this$0:Lio/appium/android/apis/animation/AnimatorEvents;

    iput-object p2, p0, Lio/appium/android/apis/animation/AnimatorEvents$1;->val$animView:Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;

    iput-object p3, p0, Lio/appium/android/apis/animation/AnimatorEvents$1;->val$endCB:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 83
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimatorEvents$1;->val$animView:Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;

    iget-object v1, p0, Lio/appium/android/apis/animation/AnimatorEvents$1;->val$endCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/appium/android/apis/animation/AnimatorEvents$MyAnimationView;->startAnimation(Z)V

    .line 84
    return-void
.end method
