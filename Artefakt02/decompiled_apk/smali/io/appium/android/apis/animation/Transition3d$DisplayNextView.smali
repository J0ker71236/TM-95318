.class final Lio/appium/android/apis/animation/Transition3d$DisplayNextView;
.super Ljava/lang/Object;
.source "Transition3d.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/animation/Transition3d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayNextView"
.end annotation


# instance fields
.field private final mPosition:I

.field final synthetic this$0:Lio/appium/android/apis/animation/Transition3d;


# direct methods
.method private constructor <init>(Lio/appium/android/apis/animation/Transition3d;I)V
    .locals 0
    .param p2, "position"    # I

    .line 122
    iput-object p1, p0, Lio/appium/android/apis/animation/Transition3d$DisplayNextView;->this$0:Lio/appium/android/apis/animation/Transition3d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput p2, p0, Lio/appium/android/apis/animation/Transition3d$DisplayNextView;->mPosition:I

    .line 124
    return-void
.end method

.method synthetic constructor <init>(Lio/appium/android/apis/animation/Transition3d;ILio/appium/android/apis/animation/Transition3d$1;)V
    .locals 0
    .param p1, "x0"    # Lio/appium/android/apis/animation/Transition3d;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lio/appium/android/apis/animation/Transition3d$1;

    .line 119
    invoke-direct {p0, p1, p2}, Lio/appium/android/apis/animation/Transition3d$DisplayNextView;-><init>(Lio/appium/android/apis/animation/Transition3d;I)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 130
    iget-object v0, p0, Lio/appium/android/apis/animation/Transition3d$DisplayNextView;->this$0:Lio/appium/android/apis/animation/Transition3d;

    invoke-static {v0}, Lio/appium/android/apis/animation/Transition3d;->access$100(Lio/appium/android/apis/animation/Transition3d;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lio/appium/android/apis/animation/Transition3d$SwapViews;

    iget-object v2, p0, Lio/appium/android/apis/animation/Transition3d$DisplayNextView;->this$0:Lio/appium/android/apis/animation/Transition3d;

    iget v3, p0, Lio/appium/android/apis/animation/Transition3d$DisplayNextView;->mPosition:I

    invoke-direct {v1, v2, v3}, Lio/appium/android/apis/animation/Transition3d$SwapViews;-><init>(Lio/appium/android/apis/animation/Transition3d;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 131
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 134
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 127
    return-void
.end method
