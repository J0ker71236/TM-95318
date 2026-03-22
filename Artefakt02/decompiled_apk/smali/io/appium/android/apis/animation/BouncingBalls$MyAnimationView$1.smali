.class Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BouncingBalls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView;


# direct methods
.method constructor <init>(Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView;)V
    .locals 0
    .param p1, "this$1"    # Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView;

    .line 134
    iput-object p1, p0, Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView$1;->this$1:Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 137
    iget-object v0, p0, Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView$1;->this$1:Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView;

    iget-object v0, v0, Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView;->balls:Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method
