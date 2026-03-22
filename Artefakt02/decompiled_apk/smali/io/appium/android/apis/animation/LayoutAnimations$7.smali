.class Lio/appium/android/apis/animation/LayoutAnimations$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LayoutAnimations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/animation/LayoutAnimations;->createCustomAnimations(Landroid/animation/LayoutTransition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/animation/LayoutAnimations;


# direct methods
.method constructor <init>(Lio/appium/android/apis/animation/LayoutAnimations;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/animation/LayoutAnimations;

    .line 165
    iput-object p1, p0, Lio/appium/android/apis/animation/LayoutAnimations$7;->this$0:Lio/appium/android/apis/animation/LayoutAnimations;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/Animator;

    .line 167
    move-object v0, p1

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 168
    .local v0, "view":Landroid/view/View;
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 169
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 170
    return-void
.end method
