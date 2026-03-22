.class Lio/appium/android/apis/animation/ReversingAnimation$1;
.super Ljava/lang/Object;
.source "ReversingAnimation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/animation/ReversingAnimation;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/animation/ReversingAnimation;

.field final synthetic val$animView:Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;


# direct methods
.method constructor <init>(Lio/appium/android/apis/animation/ReversingAnimation;Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/animation/ReversingAnimation;

    .line 52
    iput-object p1, p0, Lio/appium/android/apis/animation/ReversingAnimation$1;->this$0:Lio/appium/android/apis/animation/ReversingAnimation;

    iput-object p2, p0, Lio/appium/android/apis/animation/ReversingAnimation$1;->val$animView:Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 54
    iget-object v0, p0, Lio/appium/android/apis/animation/ReversingAnimation$1;->val$animView:Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;

    invoke-virtual {v0}, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->startAnimation()V

    .line 55
    return-void
.end method
