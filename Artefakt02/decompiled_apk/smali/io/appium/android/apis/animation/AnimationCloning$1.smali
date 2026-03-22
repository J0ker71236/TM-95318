.class Lio/appium/android/apis/animation/AnimationCloning$1;
.super Ljava/lang/Object;
.source "AnimationCloning.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/animation/AnimationCloning;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/animation/AnimationCloning;

.field final synthetic val$animView:Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;


# direct methods
.method constructor <init>(Lio/appium/android/apis/animation/AnimationCloning;Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/animation/AnimationCloning;

    .line 53
    iput-object p1, p0, Lio/appium/android/apis/animation/AnimationCloning$1;->this$0:Lio/appium/android/apis/animation/AnimationCloning;

    iput-object p2, p0, Lio/appium/android/apis/animation/AnimationCloning$1;->val$animView:Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 56
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimationCloning$1;->val$animView:Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;

    invoke-virtual {v0}, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->startAnimation()V

    .line 57
    return-void
.end method
