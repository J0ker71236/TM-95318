.class public Lio/appium/android/apis/animation/BouncingBalls;
.super Landroid/app/Activity;
.source "BouncingBalls.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f0b0047

    invoke-virtual {p0, v0}, Lio/appium/android/apis/animation/BouncingBalls;->setContentView(I)V

    .line 49
    const v0, 0x7f090073

    invoke-virtual {p0, v0}, Lio/appium/android/apis/animation/BouncingBalls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 50
    .local v0, "container":Landroid/widget/LinearLayout;
    new-instance v1, Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView;

    invoke-direct {v1, p0, p0}, Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView;-><init>(Lio/appium/android/apis/animation/BouncingBalls;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51
    return-void
.end method
