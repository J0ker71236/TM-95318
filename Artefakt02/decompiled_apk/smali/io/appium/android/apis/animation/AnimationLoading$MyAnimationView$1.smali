.class Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView$1;
.super Ljava/lang/Object;
.source "AnimationLoading.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->createAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;


# direct methods
.method constructor <init>(Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;)V
    .locals 0
    .param p1, "this$1"    # Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;

    .line 94
    iput-object p1, p0, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView$1;->this$1:Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 96
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView$1;->this$1:Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;

    iget-object v0, v0, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->balls:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/animation/ShapeHolder;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lio/appium/android/apis/animation/ShapeHolder;->setAlpha(F)V

    .line 97
    return-void
.end method
