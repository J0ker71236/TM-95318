.class Lio/appium/android/apis/animation/ListFlipper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ListFlipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/animation/ListFlipper;->flipit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/animation/ListFlipper;

.field final synthetic val$invisToVis:Landroid/animation/ObjectAnimator;

.field final synthetic val$invisibleList:Landroid/widget/ListView;

.field final synthetic val$visibleList:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lio/appium/android/apis/animation/ListFlipper;Landroid/widget/ListView;Landroid/animation/ObjectAnimator;Landroid/widget/ListView;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/animation/ListFlipper;

    .line 114
    iput-object p1, p0, Lio/appium/android/apis/animation/ListFlipper$2;->this$0:Lio/appium/android/apis/animation/ListFlipper;

    iput-object p2, p0, Lio/appium/android/apis/animation/ListFlipper$2;->val$visibleList:Landroid/widget/ListView;

    iput-object p3, p0, Lio/appium/android/apis/animation/ListFlipper$2;->val$invisToVis:Landroid/animation/ObjectAnimator;

    iput-object p4, p0, Lio/appium/android/apis/animation/ListFlipper$2;->val$invisibleList:Landroid/widget/ListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/Animator;

    .line 117
    iget-object v0, p0, Lio/appium/android/apis/animation/ListFlipper$2;->val$visibleList:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lio/appium/android/apis/animation/ListFlipper$2;->val$invisToVis:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 119
    iget-object v0, p0, Lio/appium/android/apis/animation/ListFlipper$2;->val$invisibleList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 120
    return-void
.end method
