.class Lio/appium/android/apis/animation/LayoutAnimationsHideShow$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LayoutAnimationsHideShow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->setupCustomAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/animation/LayoutAnimationsHideShow;


# direct methods
.method constructor <init>(Lio/appium/android/apis/animation/LayoutAnimationsHideShow;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/animation/LayoutAnimationsHideShow;

    .line 148
    iput-object p1, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$5;->this$0:Lio/appium/android/apis/animation/LayoutAnimationsHideShow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/Animator;

    .line 150
    move-object v0, p1

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 151
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 152
    return-void
.end method
